class Validators {
  // Валидация email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email не может быть пустым';
    }
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Введите правильный email';
    }
    return null;
  }

  // Валидация пароля
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Пароль не может быть пустым';
    }
    if (value.length < 6) {
      return 'Пароль должен содержать хотя бы 6 символов';
    }
    return null;
  }

  // Валидация для обязательных полей
  static String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Это поле обязательно для заполнения';
    }
    return null;
  }
}
