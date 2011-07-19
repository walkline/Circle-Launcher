#include "circleparseonline.h"

CircleParseOnline::CircleParseOnline(QObject *parent) :
    QObject(parent)
{
    connect(&parser, SIGNAL(DataCollected(Parser*)), this, SLOT(Parse()));
    realmsCount = 0;
}

void CircleParseOnline::startParse(QUrl url)
{
    parser.SetParseUrl(url);
}

void CircleParseOnline::Parse()
{
    realmsCount = ParseRealmsCount();
    realms      = new RealmInfo[realmsCount];

    ParseOnline();
    ParseNames();
    ParseStatus();

    emit ParsingDone();
}

int CircleParseOnline::ParseRealmsCount()
{
    if (parser.SearchSegments("<div class=\"info\">","<br>"))
        return parser.SegmentsCount();
    return 0;
}

void CircleParseOnline::ParseNames()
{
#ifdef Q_OS_WIN32
    QTextCodec::setCodecForTr(QTextCodec::codecForName("Windows-1251"));
#else
    QTextCodec::setCodecForTr(QTextCodec::codecForName("UTF-8"));
#endif
    int i = 0;
    if (parser.SearchSegments("<div class=\"info\">","<br>"))
        do {
            realms[i].realmName = tr(parser.GetSegment().toLocal8Bit());
            i++;
        } while (parser.NextSegment());
}

void CircleParseOnline::ParseOnline()
{
    int i = 0;
    if (parser.SearchSegments("<div class=\"online\">","</div>"))
        do {
            realms[i].online = parser.GetSegment().toInt();
            i++;
        } while (parser.NextSegment());
}

void CircleParseOnline::ParseStatus()
{
    int i = 0;
    if (parser.SearchSegments("<div class=\" ahx-","  showt\""))
        do {
            realms[i].isON = (parser.GetSegment() == "on") ? true : false;
            i++;
        } while (parser.NextSegment());

}
