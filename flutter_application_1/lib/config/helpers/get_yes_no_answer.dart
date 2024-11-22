import 'package:dio/dio.dart';
import 'package:flutter_application_1/domain/entities/message.dart';
import 'package:flutter_application_1/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}

/**Este código realiza una solicitud HTTP a la API pública https://yesno.wtf/api, obtiene una respuesta de tipo JSON, 
 * la mapea a un modelo YesNoModel y luego la convierte a un objeto Message que la aplicación puede utilizar.
Las clases YesNoModel y Message no están definidas en el código proporcionado, pero se puede asumir que son clases diseñadas 
para estructurar los datos de manera que sean fácilmente accesibles y utilizados dentro de la aplicación.**/