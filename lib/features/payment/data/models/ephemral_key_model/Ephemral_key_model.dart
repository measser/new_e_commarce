import 'AssociatedObjects.dart';

/// id : "ephkey_1Pc893J5CeP9kjJLKu6AHtIR"
/// object : "ephemeral_key"
/// associated_objects : [{"id":"cus_QT40PeMvJ3STA7","type":"customer"}]
/// created : 1720885557
/// expires : 1720889157
/// livemode : false
/// secret : "ek_test_YWNjdF8xUGJPcFRKNUNlUDlrakpMLGdaaks0Tm5rUUNqZVl0M28yaUpKVG51UXVNQUd6MTA_00NPzdL0aR"

class EphemeralKeyModel {
  EphemeralKeyModel({
      this.id, 
      this.object, 
      this.associatedObjects, 
      this.created, 
      this.expires, 
      this.livemode, 
      this.secret,});

  EphemeralKeyModel.fromJson(dynamic json) {
    id = json['id'];
    object = json['object'];
    if (json['associated_objects'] != null) {
      associatedObjects = [];
      json['associated_objects'].forEach((v) {
        associatedObjects?.add(AssociatedObjects.fromJson(v));
      });
    }
    created = json['created'];
    expires = json['expires'];
    livemode = json['livemode'];
    secret = json['secret'];
  }
  String? id;
  String? object;
  List<AssociatedObjects>? associatedObjects;
  num? created;
  num? expires;
  bool? livemode;
  String? secret;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['object'] = object;
    if (associatedObjects != null) {
      map['associated_objects'] = associatedObjects?.map((v) => v.toJson()).toList();
    }
    map['created'] = created;
    map['expires'] = expires;
    map['livemode'] = livemode;
    map['secret'] = secret;
    return map;
  }

}