import 'package:get/get_navigation/src/root/internacionalization.dart';

// Custom translations class to handle different languages
class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    // English translations
    'en_US': {
      'message': 'What is your name?', // English message
      'name': 'Anees Ahmed', // English name
    },
    // Urdu translations
    'ur_PK': {
      'message': 'آپ کا نام کیا ہے', // Urdu message
      'name': 'انیس احمد', // Urdu name
    },
  };
}
