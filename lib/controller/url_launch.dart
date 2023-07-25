import 'package:url_launcher/url_launcher.dart';

class UrlLaunch {
  Future<void> launchURL(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Erro! Não foi possivel abrir $url');
    }
  }
}
