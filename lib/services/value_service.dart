///Set Account Username
String accountUsername = '';

///Set Account Namee
String accountName = '';

///Set Account Surname
String accountSurname = '';

///Set Account Mail
String accountMail = '';

///Set Account Phone
String accountPhone = '';

///Set Account Id
String accountId = '';

///
class ValueService {
  Future<void> initializeLogin(
    String accountNameVoid,
    String accountMailVoid,
    String accountPhoneVoid,
    String accountIdVoid,
  ) async {
    accountUsername = accountNameVoid;
    final username = accountNameVoid.split(' ');
    accountName = username[0];
    try {
      accountSurname = username[1];
    } catch (e) {
      accountSurname = '';
    }
    accountMail = accountMailVoid;
    accountPhone = accountPhoneVoid == '' ? '' : accountPhoneVoid;
    accountId = accountIdVoid;
  }
}
