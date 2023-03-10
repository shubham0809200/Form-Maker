import 'package:flutter/material.dart';

class FormElement extends StatelessWidget {
  ///
  /// [title] is the title of the form field
  ///
  final String? title;

  ///
  /// [titleStyle] is the style of the title of the form field
  ///
  final TextStyle? titleStyle;

  ///
  /// [prefix] is the prefix text of the form field
  ///
  final Widget? prefix;

  ///
  /// [suffix] is the suffix text of the form field
  ///
  final Widget? suffix;

  ///
  /// [textInputType] is the type of the form field
  ///
  final TextInputType? textInputType;

  ///
  /// [controller] is the controller of the form field
  ///
  final TextEditingController? controller;

  ///
  /// [onChanged] is the function that will be called when the form field is changed
  ///
  final Function(String)? onChanged;

  ///
  /// [label] is the label of the form field
  ///
  final String? label;

  ///
  /// [hint] is the hint of the form field
  ///
  final String? hint;

  ///
  /// [enable] is the enable or disable of the form field
  ///
  final bool? enable;

  ///
  /// [disableTextFieldStyle] is the style of the disable form field
  ///
  final TextStyle? disableTextFieldStyle;

  ///
  /// [textFormFieldStyle] is the style of the form field
  ///
  final TextStyle? textFormFieldStyle;

  ///
  /// [obscureText] is the obscureText of the form field
  ///
  final bool? obscureText;

  ///
  /// [onTap] is the function that will be called when the form field is tapped
  ///
  final Function()? onTap;

  ///
  /// [maxLines] is the max lines of the form field
  ///
  final int? maxLines;

  const FormElement({
    Key? key,
    this.title,
    this.titleStyle,
    this.prefix,
    this.suffix,
    this.textInputType,
    this.controller,
    this.onChanged,
    this.label,
    this.hint,
    this.enable,
    this.disableTextFieldStyle,
    this.textFormFieldStyle,
    this.obscureText,
    this.maxLines,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///
        /// check if the [title] is not null
        ///

        if (title != null)

          ///
          /// if the [title] is not null then add a [Padding] widget
          ///
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    style:
                        titleStyle ?? Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),

        ///
        /// add a [TextFormField] widget
        ///
        TextFormField(
          /// set the [obscureText] to [obscureText] if it is not null
          obscureText: obscureText ?? false,

          /// set the [enable] to [enable] if it is not null
          enabled: enable ?? true,

          /// set the [controller] to [controller] if it is not null
          controller: controller ?? TextEditingController(),

          /// set the [style] to [style] if it is not null

          style: enable != null

              ///
              /// check if the [enable] is false
              ///
              /// if the [enable] is false then set the [disableTextFieldStyle] to [disableTextFieldStyle] if it is not null
              ? enable == false
                  ? disableTextFieldStyle ??
                      TextStyle(
                        fontSize: 14,
                        color: enable != null
                            ? enable == false
                                ? Colors.grey
                                : Colors.black
                            : Colors.black,
                      )

                  ///
                  /// if the [enable] is true then set the [textFormFieldStyle] to [textFormFieldStyle] if it is not null
                  ///
                  : textFormFieldStyle ??
                      TextStyle(
                        fontSize: 14,
                        color: enable != null
                            ? enable == false
                                ? Colors.grey
                                : Colors.black
                            : Colors.black,
                      )

              ///
              /// if the [enable] is null then set the [textFormFieldStyle] to [textFormFieldStyle] if it is not null
              ///
              : textFormFieldStyle ??
                  TextStyle(
                    fontSize: 14,
                    color: enable != null
                        ? enable == false
                            ? Colors.grey
                            : Colors.black
                        : Colors.black,
                  ),
          decoration: InputDecoration(
            border: const OutlineInputBorder(),

            /// set the [labelText] to [label] if it is not null
            labelText: label ?? 'Answer',

            /// set the [hintText] to [hint] if it is not null
            hintText: hint ?? 'Enter your Answer',

            /// set the [prefixText] to [prefixText] if it is not null
            prefix: prefix ?? const SizedBox(),

            /// set the [suffix] to [suffix] if it is not null
            suffix: suffix ?? const SizedBox(),
          ),

          /// set the [textInputType] to [textInputType] if it is not null
          keyboardType: textInputType ?? TextInputType.multiline,

          /// set the [maxLines] to [maxLines] if it is not null
          maxLines: maxLines ?? 1,

          /// set the [onChanged] to [onChanged] if it is not null
          onChanged: onChanged ?? (value) {},

          /// set the [onTap] to [onTap] if it is not null
          onTap: onTap ?? () {},
        ),

        ///
        /// add a [SizedBox] widget
        ///
        const SizedBox(height: 10),
      ],
    );
  }

  ///
  /// [FormElement] factory constructors for different types of form fields
  ///

  ///
  /// [email] is the factory constructor for email form field
  ///
  /// Email
  ///
  factory FormElement.email({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Email',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.emailAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [verifyEmail] is the factory constructor for verify email form field
  ///
  /// Verify Email
  ///
  factory FormElement.verifyEmail({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Verify Email',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.emailAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [password] is the factory constructor for password form field
  ///
  /// Password
  ///
  factory FormElement.password({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    bool? obscureText,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Password',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.visiblePassword,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: obscureText ?? true,
    );
  }

  ///
  /// [confirmPassword] is the factory constructor for confirm password form field
  ///
  /// Confirm Password
  ///
  factory FormElement.confirmPassword({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    bool? obscureText,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Confirm Password',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.visiblePassword,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: obscureText ?? false,
    );
  }

  ///
  /// [name] is the factory constructor for name form field
  ///
  /// Name
  ///
  factory FormElement.name({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [firstName] is the factory constructor for first name form field
  ///
  /// First Name
  ///
  factory FormElement.firstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [lastName] is the factory constructor for last name form field
  ///
  /// Last Name
  ///
  factory FormElement.lastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [phone] is the factory constructor for phone form field
  ///
  /// Phone
  ///
  factory FormElement.phone({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Phone Number',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [fax] is the factory constructor for fax form field
  ///
  /// Fax
  ///
  factory FormElement.fax({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Fax',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [mobile] is the factory constructor for mobile form field
  ///
  /// Mobile
  ///
  factory FormElement.mobile({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Mobile',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [officeNumber] is the factory constructor for office form field
  ///
  /// Office Number
  ///
  factory FormElement.officeNumber({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Office Number',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [address] is the factory constructor for address form field
  ///
  /// Address
  ///
  factory FormElement.address({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    int? maxLines,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Address',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.streetAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
      maxLines: maxLines ?? 3,
    );
  }

  ///
  /// [addressTwo] is the factory constructor for address two form field
  ///
  /// Address 2
  ///
  factory FormElement.addressTwo({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    int? maxLines,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Address 2',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.streetAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
      maxLines: maxLines ?? 3,
    );
  }

  ///
  /// [city] is the factory constructor for city form field
  ///
  /// City
  ///
  factory FormElement.city({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'City',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.text,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [state] is the factory constructor for state form field
  ///
  /// State
  ///
  factory FormElement.state({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'State',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.text,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [zip] is the factory constructor for zip form field
  ///
  /// Zip Code
  ///
  factory FormElement.zip({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Zip Code',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.number,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [pincode] is the factory constructor for pincode form field
  ///
  /// Pin Code
  ///
  factory FormElement.pincode({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Pin Code',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.number,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [country] is the factory constructor for country form field
  ///
  /// Country
  ///
  factory FormElement.country({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Country',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.text,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [age] is the factory constructor for age form field
  ///
  /// Age
  ///
  factory FormElement.age({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Age',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.number,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [dob] is the factory constructor for dob form field
  ///
  /// Date of Birth
  ///
  factory FormElement.dob({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    bool? obscureText,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Date of Birth',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.datetime,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [motherName] is the factory constructor for mother name form field
  ///
  /// Mother Name
  ///
  factory FormElement.motherName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Mother Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [motherFirstName] is the factory constructor for mother first name form field
  ///
  /// Mother First Name
  ///
  factory FormElement.motherFirstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Mother First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [motherLastName] is the factory constructor for mother last name form field
  ///
  /// Mother Last Name
  ///
  factory FormElement.motherLastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Mother Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [fatherName] is the factory constructor for father name form field
  ///
  /// Father Name
  ///
  factory FormElement.fatherName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Father Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [fatherFirstName] is the factory constructor for father first name form field
  ///
  /// Father First Name
  ///
  factory FormElement.datherFirstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Father First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [fatherLastName] is the factory constructor for father last name form field
  ///
  /// Father Last Name
  ///
  factory FormElement.fatherLastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Father Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [spouseName] is the factory constructor for spouse name form field
  ///
  /// Spouse Name
  ///
  factory FormElement.spouseName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Spouse Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [spouseFirstName] is the factory constructor for spouse first name form field
  ///
  /// Spouse First Name
  ///
  factory FormElement.spouseFirstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Spouse First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [spouseLastName] is the factory constructor for spouse last name form field
  ///
  /// Spouse Last Name
  ///
  factory FormElement.spouseLastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Spouse Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandFatherName] is the factory constructor for grand father name form field
  ///
  /// Grand Father Name
  ///
  factory FormElement.grandFatherName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Father Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandFatherFirstName] is the factory constructor for grand father first name form field
  ///
  /// Grand Father First Name
  ///
  factory FormElement.grandFatherFirstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Father First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandFatherLastName] is the factory constructor for grand father last name form field
  ///
  /// Grand Father Last Name
  ///
  factory FormElement.grandFatherLastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Father Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandMotherName] is the factory constructor for grand mother name form field
  ///
  /// Grand Mother Name
  ///
  factory FormElement.grandMotherName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Mother Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandMotherFirstName] is the factory constructor for grand mother first name form field
  ///
  /// Grand Mother First Name
  factory FormElement.grandMotherFirstName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Mother First Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [grandMotherLastName] is the factory constructor for grand mother last name form field
  ///
  /// Grand Mother Last Name
  ///
  factory FormElement.grandMotherLastName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Grand Mother Last Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [relation] is the factory constructor for relation form field
  ///
  /// Relation
  ///
  factory FormElement.relation({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Relation',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [website] is the factory constructor for website form field
  ///
  /// Website
  ///
  factory FormElement.website({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Website',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.url,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [companyName] is the factory constructor for company name form field
  ///
  /// Company Name
  ///
  factory FormElement.companyName({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Name',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.name,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [companyAddress] is the factory constructor for company address form field
  ///
  /// Company Address
  ///
  factory FormElement.companyAddress({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    int? maxLines,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Address',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.streetAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
      maxLines: maxLines ?? 3,
    );
  }

  ///
  /// [companyPhone] is the factory constructor for company phone form field
  ///
  /// Company Phone
  ///
  factory FormElement.companyNumber({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Phone',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [companyFax] is the factory constructor for company fax form field
  ///
  /// Company Fax
  ///
  factory FormElement.companyFax({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Fax',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.phone,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [companyEmail] is the factory constructor for company email form field
  ///
  /// Company Email
  ///
  factory FormElement.companyEmail({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Email',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.emailAddress,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [companyWebsite] is the factory constructor for company website form field
  ///
  /// Company Website
  ///
  factory FormElement.companyWebsite({
    TextEditingController? controller,
    Function(String)? onChanged,
    bool? enable,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: 'Company Website',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: TextInputType.url,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: false,
    );
  }

  ///
  /// [custom] is the factory constructor for relation type form field
  ///
  /// Custom
  ///
  factory FormElement.custom({
    String? title,
    TextInputType? textInputType,
    TextEditingController? controller,
    Function(String)? onChanged,
    String? label,
    String? hint,
    bool? enable,
    bool? obscureText,
    Function()? onTap,
    TextStyle? titleStyle,
    TextStyle? disableTextFieldStyle,
    TextStyle? textFormFieldStyle,
    int? maxLines,
    Widget? suffix,
    Widget? prefix,
  }) {
    return FormElement(
      title: title ?? '',
      titleStyle: titleStyle,
      prefix: prefix,
      suffix: suffix,
      textInputType: textInputType ?? TextInputType.text,
      controller: controller ?? TextEditingController(),
      onChanged: onChanged ?? (value) {},
      enable: enable ?? true,
      disableTextFieldStyle: disableTextFieldStyle,
      textFormFieldStyle: textFormFieldStyle,
      onTap: onTap ?? () {},
      obscureText: obscureText ?? false,
      maxLines: maxLines ?? 1,
      label: label ?? '',
      hint: hint ?? '',
    );
  }
}
