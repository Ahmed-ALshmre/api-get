
class DataClass{
  String name;
  String id;
  String updatedAt;
  String createdAt;

  DataClass({this.id,this.name,this.createdAt,this.updatedAt});


 factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
   name: json["name"],
  id: json["_id"],
  createdAt: json["createdAt"].toString(),
  updatedAt:json["updatedAt"].toString(),
      );
}