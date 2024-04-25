class WishlistModel {
  final String? icon;
  final String? name;
  final String? desc;
  final String? chart;
  final String? currency;
  final String? loss;
  final bool? isLoss;
  bool? isUp;

  WishlistModel(
      {this.icon,
      this.name,
      this.desc,
      this.chart,
      this.currency,
      this.loss,
      this.isLoss,
      this.isUp});

  factory WishlistModel.fromJson(Map<String, dynamic> json) => WishlistModel(
        icon: json["icon"],
        name: json["name"],
        desc: json["desc"],
        chart: json["chart"],
        currency: json["currency"],
        loss: json["loss"],
        isLoss: json["isLoss"],
        isUp: json["isUp"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "name": name,
        "desc": desc,
        "chart": chart,
        "currency": currency,
        "loss": loss,
        "isLoss": isLoss,
        "isUp": isUp,
      };
}
