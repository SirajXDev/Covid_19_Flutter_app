class Appurl{
  //this is our base uri
  static const String baseUrl='https://disease.sh/v3/covid-19/';

  //fetch world covid states
  static const String worldStatesApi='${baseUrl}all';
  static const String countriesList='${baseUrl}countries';
  //OR
  // String worldStatesApi=baseUrl +'all';
  // static const String countriesList=baseUrl+'countries';
}