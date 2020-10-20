part of 'widgets.dart';

class SignUpForm extends StatefulWidget {
  final GlobalKey formKey;

  SignUpForm({Key key, this.formKey}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final emailValidation = Validation(
    name: i18n.translate.email_or_username,
    isEmail: true,
    isRequired: true,
  );

  final passwordValidation = Validation(
    name: i18n.translate.password,
    isRequired: true,
    min: 6,
  );

  final firstNameValidation = Validation(
    name: i18n.translate.first_name,
    isRequired: true,
  );

  final lastNameValidation = Validation(
    name: i18n.translate.last_name,
    isRequired: true,
  );

  FocusNode firstNameFocus;

  FocusNode lastNameFocus;

  FocusNode passwordFocus;

  SignUpCubit bloc;

  @override
  void initState() {
    super.initState();

    firstNameFocus = FocusNode();
    lastNameFocus = FocusNode();
    passwordFocus = FocusNode();
    bloc = context.bloc<SignUpCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildEmailField(),
          SizedBox(
            height: Spacing.defaultSpacing,
          ),
          buildFirstNameField(),
          SizedBox(
            height: Spacing.defaultSpacing,
          ),
          buildLastNameField(),
          SizedBox(
            height: Spacing.defaultSpacing,
          ),
          buildPasswordField(),
        ],
      ),
    );
  }

  CTextField buildEmailField() {
    return CTextField(
      intialValue: bloc.state.email,
      text: emailValidation.name,
      inputType: TextInputType.emailAddress,
      validator: (text) => emailValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.emailChanged,
      inputAction: TextInputAction.next,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(firstNameFocus),
    );
  }

  CTextField buildFirstNameField() {
    return CTextField(
      intialValue: bloc.state.firstName,
      text: firstNameValidation.name,
      validator: (text) =>
          firstNameValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.firstNameChanged,
      focusNode: firstNameFocus,
      inputAction: TextInputAction.next,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(lastNameFocus),
    );
  }

  CTextField buildLastNameField() {
    return CTextField(
      intialValue: bloc.state.lastName,
      text: lastNameValidation.name,
      validator: (text) => lastNameValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.lastNameChanged,
      focusNode: lastNameFocus,
      inputAction: TextInputAction.next,
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(passwordFocus),
    );
  }

  CTextField buildPasswordField() {
    return CTextField(
      text: passwordValidation.name,
      obscureText: true,
      validator: (text) => passwordValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.passwordChanged,
      focusNode: passwordFocus,
    );
  }

  @override
  void dispose() {
    firstNameFocus.dispose();
    lastNameFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }
}
