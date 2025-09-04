abstract class AppKeyConstant{
  static const String emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String passwordRegex =  r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z\d]).{8,}$';
  static const String usernameRegex = r'^[a-zA-Z0-9,.-]+$';
}