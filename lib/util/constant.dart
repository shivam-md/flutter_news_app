
// dart file for all constant data.

class Constant{

  // api url to search top headlines (endpoint : Top Headlines)
  static const String apiURL = "https://newsapi.org/v2/top-headlines?country=in&apiKey=2da379ae37a94ff39e04f82b64975d07";

  // returns string value of search api url.
  static String searchNewsByKeyword(String text){
    // string interpolation of search text with search api url (endpoint : everything)
    return 'https://newsapi.org/v2/everything?q=$text&apiKey=2da379ae37a94ff39e04f82b64975d07';
  }

}