import 'package:bored_app/models/bored_model.dart';
import 'package:vexana/vexana.dart';

class BoredService {
  BoredService._();

  static BoredService instance = BoredService._();

  static const String _baseUrl = 'https://www.boredapi.com/api/';

  final NetworkManager _networkManager = NetworkManager(
      options: BaseOptions(
    baseUrl: _baseUrl,
  ));

  Future<BoredModel?> getBored() async {
    try {
      final response = await _networkManager.send<BoredModel, BoredModel>(
          'activity',
          parseModel: BoredModel(),
          method: RequestType.GET);
      return response.data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
