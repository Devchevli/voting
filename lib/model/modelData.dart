class ModelData {
  String? image;
  String? name;
  String? party;
  String? sign;
  String? discribtion;

  ModelData({this.image, this.name, this.party, this.sign, this.discribtion});

  ModelData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    party = json['party'];
    sign = json['sign'];
    discribtion = json['Discribtion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['party'] = this.party;
    data['sign'] = this.sign;
    data['Discribtion'] = this.discribtion;
    return data;
  }
}