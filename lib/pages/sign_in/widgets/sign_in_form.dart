part of 'widgets.dart';

class SignInForm extends StatefulWidget {
  final formKey;

  SignInForm({this.formKey});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  FocusNode passwordFieldFocus;

  final emailValidation = Validation(
    name: i18n.translate.email_or_username,
    isRequired: true,
  );

  final passwordValidation = Validation(
    name: i18n.translate.password,
    isRequired: true,
    min: 6,
  );
  
  SignInCubit bloc;

  @override
  void initState() {
    super.initState();

    passwordFieldFocus = FocusNode();
    bloc = context.bloc<SignInCubit>();
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
      onChanged: (text) {
        bloc.emailChanged(text);
      },
      onFieldSubmitted: (_) =>
          FocusScope.of(context).requestFocus(passwordFieldFocus),
      inputAction: TextInputAction.next,
    );
  }

  CTextField buildPasswordField() {
    return CTextField(
      focusNode: passwordFieldFocus,
      text: passwordValidation.name,
      obscureText: true,
      validator: (text) => passwordValidation.withUpdatedValue(text).validate(),
      onChanged: (text) {
        bloc.passwordChanged(text);
      },
    );
  }

  @override
  void dispose() {
    passwordFieldFocus.dispose();

    super.dispose();
  }
}
