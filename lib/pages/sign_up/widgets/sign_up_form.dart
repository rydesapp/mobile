part of 'widgets.dart';

class SignUpForm extends StatelessWidget {
  final GlobalKey formKey;
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

  SignUpCubit bloc;

  SignUpForm({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bloc = context.bloc<SignUpCubit>();
    return Form(
      key: formKey,
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
    );
  }

  CTextField buildFirstNameField() {
    return CTextField(
      intialValue: bloc.state.firstName,
      text: firstNameValidation.name,
      validator: (text) =>
          firstNameValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.firstNameChanged,
    );
  }

  CTextField buildLastNameField() {
    return CTextField(
      intialValue: bloc.state.lastName,
      text: lastNameValidation.name,
      validator: (text) => lastNameValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.lastNameChanged,
    );
  }

  CTextField buildPasswordField() {
    return CTextField(
      text: passwordValidation.name,
      obscureText: true,
      validator: (text) => passwordValidation.withUpdatedValue(text).validate(),
      onChanged: bloc.passwordChanged,
    );
  }
}
