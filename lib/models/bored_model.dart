import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vexana/vexana.dart';

part 'bored_model.freezed.dart';
part 'bored_model.g.dart';

/*
  ***Example***
  {
	"activity": "Learn Express.js",
	"accessibility": 0.25,
	"type": "education",
	"participants": 1,
	"price": 0.1,
	"link": "https://expressjs.com/",
	"key": "3943506"
} 

*/

@freezed
class BoredModel extends INetworkModel with _$BoredModel {
  BoredModel._();
  factory BoredModel({
    String? activity,
    double? accessibility,
    String? type,
    int? participants,
    double? price,
    String? link,
    String? key,
  }) = _BoredModel;

  factory BoredModel.fromJson(Map<String, dynamic> json) =>
      _$BoredModelFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) {
    return BoredModel.fromJson(json);
  }
}
