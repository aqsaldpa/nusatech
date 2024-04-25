class TrendingModel {
  final String? icon;
  final String? name;
  final String? desc;
  final String? currency;
  final String? loss;
  final bool? isLoss;
  final String? chart;

  TrendingModel({
    this.icon,
    this.name,
    this.desc,
    this.currency,
    this.loss,
    this.isLoss,
    this.chart,
  });

  factory TrendingModel.fromJson(Map<String, dynamic> json) => TrendingModel(
        icon: json["icon"],
        name: json["name"],
        desc: json["desc"],
        currency: json["currency"],
        loss: json["loss"],
        isLoss: json["isLoss"],
        chart: json["chart"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "name": name,
        "desc": desc,
        "currency": currency,
        "loss": loss,
        "isLoss": isLoss,
        "chart": chart,
      };
}
