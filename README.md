# Form Maker [![pub package](https://img.shields.io/pub/v/form_maker.svg)](https://pub.dartlang.org/packages/form_maker)

The Form Maker package is a convenient tool for developers to easily create forms in their Flutter applications. With this package, you can easily create different types of form fields like text fields, password fields. This package aims to simplify the process of creating forms by providing a user-friendly interface that makes it easy to customize the look and feel of each form field.

## Usage

To use this package, add `form_maker` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

```
dependencies:

  form_maker: latest verison
```

```dart
// Import package
import 'package:form_maker/form_maker.dart';

```

## Example

```dart

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Maker'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///
              /// Form Maker [FormElement.name] widget
              ///
              FormElement.name(
                onTap: () {
                  print('Name');
                },
              ),
              ///
              /// Form Maker [FormElement.email] widget
              ///
              FormElement.email(),
              FormElement.phone(),
              FormElement.address(),
            ],
          ),
        ));
  }
}

```

## Parameters

| Parameter       | Type                   | Description                                             |
| :-------------- | :--------------------- | :------------------------------------------------------ |
| 'title'         | String?                | The title of the form field                             |
| 'prefixText'    | String?                | The prefix text of the form field                       |
| 'textInputType' | TextInputType?         | The type of the form field                              |
| 'controller'    | TextEditingController? | The controller of the form field                        |
| 'onChanged'     | Function(String)?      | The callback function when the form field value changes |
| 'label'         | String?                | The label of the form field                             |
| 'hint'          | String?                | The hint of the form field                              |
| 'enable'        | bool?                  | The enable state of the form field                      |
| 'obscureText'   | bool?                  | The obscure text state of the form field                |
| 'onTap'         | Function()?            | The callback function when the form field is tapped     |
| 'maxLines'      | int?                   | The maximum number of lines of the form field           |

## FormElement

```dart
FormElement.name(
    controller: TextEditingController(),
    onChanged: (value) {
      print(value);
    },
    onTap: () {
      print('Name');
    },
    enable: true,
    ),

```

| FormElement             | Description                        | Parameters                                                                                                   |
| :---------------------- | :--------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| .email()                | Email form field                   | controller, onChanged , enable, onTap                                                                        |
| .verifyEmail()          | Verify email form field            | controller, onChanged , enable, onTap                                                                        |
| .password()             | Password form field                | controller, onChanged , enable, onTap, obscureText                                                           |
| .confirmPassword()      | Confirm password field             | controller, onChanged , enable, onTap, obscureText                                                           |
| .name()                 | Name form field                    | controller, onChanged , enable, onTap                                                                        |
| .firstName()            | First name form field              | controller, onChanged , enable, onTap                                                                        |
| .lastName()             | Last name form field               | controller, onChanged , enable, onTap                                                                        |
| .phone()                | Phone form field                   | controller, onChanged , enable, onTap, prefixText                                                            |
| .fax()                  | Fax form field                     | controller, onChanged , enable, onTap, prefixText                                                            |
| .mobile()               | Mobile form field                  | controller, onChanged , enable, onTap, prefixText                                                            |
| .officeNumber()         | Office number form field           | controller, onChanged , enable, onTap, prefixText                                                            |
| .address()              | Address form field                 | controller, onChanged , enable, onTap, maxLines                                                              |
| .addressTwo()           | Extra Address field for form       | controller, onChanged , enable, onTap, maxLines                                                              |
| .city()                 | City form field                    | controller, onChanged , enable, onTap                                                                        |
| .state()                | State form field                   | controller, onChanged , enable, onTap                                                                        |
| .zip()                  | Zip form field                     | controller, onChanged , enable, onTap                                                                        |
| .pincod()               | Pincode form field                 | controller, onChanged , enable, onTap                                                                        |
| .country()              | Country form field                 | controller, onChanged , enable, onTap                                                                        |
| .age()                  | Age form field                     | controller, onChanged , enable, onTap                                                                        |
| .dob()                  | Date of birth form field           | controller, onChanged , enable, onTap                                                                        |
| .motherName()           | Mother name form field             | controller, onChanged , enable, onTap                                                                        |
| .motherFirstName()      | Mother first name form field       | controller, onChanged , enable, onTap                                                                        |
| .motherLastName()       | Mother last name form field        | controller, onChanged , enable, onTap                                                                        |
| .fatherName()           | Father name form field             | controller, onChanged , enable, onTap                                                                        |
| .fatherFirstName()      | Father first name form field       | controller, onChanged , enable, onTap                                                                        |
| .fatherLastName()       | Father last name form field        | controller, onChanged , enable, onTap                                                                        |
| .spouseName()           | Spouse name form field             | controller, onChanged , enable, onTap                                                                        |
| .spouseFirstName()      | Spouse first name form field       | controller, onChanged , enable, onTap                                                                        |
| .spouceLastName()       | Spouse last name form field        | controller, onChanged , enable, onTap                                                                        |
| .grandFatherName()      | Grand father name form field       | controller, onChanged , enable, onTap                                                                        |
| .grandFatherFirstName() | Grand father first name form field | controller, onChanged , enable, onTap                                                                        |
| .grandFatherLastName()  | Grand father last name form field  | controller, onChanged , enable, onTap                                                                        |
| .grandMotherName()      | Grand mother name form field       | controller, onChanged , enable, onTap                                                                        |
| .grandMotherFirstName() | Grand mother first name form field | controller, onChanged , enable, onTap                                                                        |
| .grandMotherLastName()  | Grand mother last name form field  | controller, onChanged , enable, onTap                                                                        |
| .relation()             | Relation form field                | controller, onChanged , enable, onTap                                                                        |
| .website()              | Website form field                 | controller, onChanged , enable, onTap                                                                        |
| .companyName()          | Company name form field            | controller, onChanged , enable, onTap                                                                        |
| .companyAddress()       | Company address form field         | controller, onChanged , enable, onTap, maxLines                                                              |
| .companyNumber()        | Company number form field          | controller, onChanged , enable, onTap, prefixText                                                            |
| .companyFax()           | Company fax form field             | controller, onChanged , enable, onTap, prefixText                                                            |
| .companyEmail()         | Company email form field           | controller, onChanged , enable, onTap                                                                        |
| .companyWebsite()       | Company website form field         | controller, onChanged , enable, onTap                                                                        |
| .custom()               | Custom form field                  | controller, onChanged , enable, onTap, label, hint, textInputType, title, prefixText, maxLines , obscureText |

## GitHub Repository

[Form Maker](https://github.com/shubham0809200/Form-Maker)

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

## Also check out

| Package                                                             | Description                 |
| ------------------------------------------------------------------- | --------------------------- |
| [Dad Jokes](https://pub.dev/packages/dad_joke)                      | Get random dad jokes        |
| [Timestamp to String](https://pub.dev/packages/timestamp_to_string) | Convert timestamp to string |
