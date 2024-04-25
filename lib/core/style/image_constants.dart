class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get logoPexBank => toPng("Logo_Pexbank");
  String get logoPexBankSVG => toSvg("Logo_Pexbank_svg");
  String get iconNotification => toSvg("icons_notification");
  String get iconPerson => toSvg("icons_person");
  String get iconHome => toSvg("icons_home");
  String get iconData => toSvg("icons_data");
  String get iconSwap => toSvg("icons_swap");
  String get iconTrending => toSvg("icons_trending");
  String get iconWallet => toSvg("icons_wallet");
  String get iconBtc => toSvg("btc");
  String get lineChart => toSvg("line-chart");
  String get iconPolygon => toSvg("polygon");
  String get bgAnnouncement => toPng("bg_announcement");
  String get imgAnnouncement => toPng("img_announcement");
  String get iconUSDT => toSvg("usdt");
  String get iconTrx => toSvg("trx");
  String get iconChart1 => toSvg("chart1");
  String get iconChart2 => toSvg("chart2");
  String get iconChart3 => toSvg("chart3");
  String get iconUP => toSvg("arrowup");

  String toJpg(String name) => "assets/$name.jpg";
  String toSvg(String name) => "assets/$name.svg";
  String toPng(String name) => "assets/$name.png";
}
