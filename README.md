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

## How to use

To better understand how to use this package and create signup forms easily in Flutter, please visit the following blog: [Create Signup Forms in Flutter with Form Maker][1]

[1]: https://medium.com/@i.shubham/create-signup-forms-in-flutter-with-form-maker-426c4ae6bff5

## Parameters

| Parameter               | Type                   | Description                                             |
| :---------------------- | :--------------------- | :------------------------------------------------------ |
| 'title'                 | String?                | The title of the form field                             |
| 'titleStyle'            | TextStyle?             | The style of the title                                  |
| 'prefix'                | Widget?                | The prefix widget of the form field                     |
| 'suffix'                | Widget?                | The suffix widget of the form field                     |
| 'textInputType'         | TextInputType?         | The type of the form field                              |
| 'controller'            | TextEditingController? | The controller of the form field                        |
| 'onChanged'             | Function(String)?      | The callback function when the form field value changes |
| 'label'                 | String?                | The label of the form field                             |
| 'hint'                  | String?                | The hint of the form field                              |
| 'enable'                | bool?                  | The enable state of the form field                      |
| 'disableTextFieldStyle' | TextStyle?             | The style of the disabled form field                    |
| 'textFormFieldStyle'    | TextStyle?             | The style of the form field                             |
| 'obscureText'           | bool?                  | The obscure text state of the form field                |
| 'onTap'                 | Function()?            | The callback function when the form field is tapped     |
| 'maxLines'              | int?                   | The maximum number of lines of the form field           |

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

| FormElement             | Description                        | Parameters                                                                                                                                                                |
| :---------------------- | :--------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| .email()                | Email form field                   | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .verifyEmail()          | Verify email form field            | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .password()             | Password form field                | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, obscureText                                               |
| .confirmPassword()      | Confirm password field             | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, obscureText                                               |
| .name()                 | Name form field                    | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .firstName()            | First name form field              | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .lastName()             | Last name form field               | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .phone()                | Phone form field                   | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .fax()                  | Fax form field                     | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .mobile()               | Mobile form field                  | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .officeNumber()         | Office number form field           | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .address()              | Address form field                 | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, maxLines                                                  |
| .addressTwo()           | Extra Address field for form       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, maxLines                                                  |
| .city()                 | City form field                    | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .state()                | State form field                   | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .zip()                  | Zip form field                     | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .pincod()               | Pincode form field                 | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .country()              | Country form field                 | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .age()                  | Age form field                     | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .dob()                  | Date of birth form field           | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .motherName()           | Mother name form field             | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .motherFirstName()      | Mother first name form field       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .motherLastName()       | Mother last name form field        | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .fatherName()           | Father name form field             | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .fatherFirstName()      | Father first name form field       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .fatherLastName()       | Father last name form field        | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .spouseName()           | Spouse name form field             | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .spouseFirstName()      | Spouse first name form field       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .spouceLastName()       | Spouse last name form field        | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandFatherName()      | Grand father name form field       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandFatherFirstName() | Grand father first name form field | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandFatherLastName()  | Grand father last name form field  | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandMotherName()      | Grand mother name form field       | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandMotherFirstName() | Grand mother first name form field | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .grandMotherLastName()  | Grand mother last name form field  | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .relation()             | Relation form field                | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .website()              | Website form field                 | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .companyName()          | Company name form field            | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .companyAddress()       | Company address form field         | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, maxLines                                                  |
| .companyNumber()        | Company number form field          | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .companyFax()           | Company fax form field             | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .companyEmail()         | Company email form field           | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .companyWebsite()       | Company website form field         | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle                                                            |
| .custom()               | Custom form field                  | controller, onChanged , enable, onTap, , titleStyle, prefix, suffix, disableTextFieldStyle, textFormFieldStyle, label, hint, textInputType, title, maxLines , obscureText |

## GitHub Repository

[Form Maker](https://github.com/shubham0809200/Form-Maker)

## Author

Shubham Kumar - [Github](https://github.com/shubham0809200)

## Also check out

| Package                                                             | Description                 |
| ------------------------------------------------------------------- | --------------------------- |
| [Dad Jokes](https://pub.dev/packages/dad_joke)                      | Get random dad jokes        |
| [Timestamp to String](https://pub.dev/packages/timestamp_to_string) | Convert timestamp to string |
