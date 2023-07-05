class Api{
  static const String _baseUrl = "https://sharkna.online/api";

  static const String LOGIN = "$_baseUrl/login";
  static const String REGISTER = "$_baseUrl/register";
  static const String LOGOUT = "$_baseUrl/logout";
// from user
  static const String GETPROFILE = "$_baseUrl/users/profile";
  static const String UPDATEPROFILE = "$_baseUrl/users/profile/update";
  static const String FORGETPASSWORD = "$_baseUrl/users/forgotPassword";
  static const String VERIFYCODE = "$_baseUrl/users/verifyCode";
  static const String CHANGEPASSWORD = "$_baseUrl/users/changePassword";
// from game
  static const String GAME = "$_baseUrl/games";
  static const String GETCOFFEEGAME = "$_baseUrl/getCafeGame";
// from caffee
  static const String GETALLCOFFEE = "$_baseUrl/getAllCafe";
  static const String TICKET = "$_baseUrl/ticket";
  static const String GETPRODUCTS = "$_baseUrl/getProducts";
  static const String GETCATEGORIES = "$_baseUrl/getCategories";
// from notification
  static const String NOTIFICATION = "$_baseUrl/notifications";
// from terms
  static const String TERMS = "$_baseUrl/terms";
}