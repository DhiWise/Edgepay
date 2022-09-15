/// Checks if string consist only numeric.
bool isNumeric(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    const pattern = r'^\d+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Checks if string is phone number
bool isValidPhone(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    if (inputString.length > 16 || inputString.length < 6) return false;

    const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Checks if string consist only Alphabet. (No Whitespace)
bool isText(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    const pattern = r'^[a-zA-Z ]+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}

/// Checks if string is email.
bool isValidEmail(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}