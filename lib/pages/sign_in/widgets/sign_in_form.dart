part of 'widgets.dart';

class SignInForm extends StatelessWidget {
  final formKey;
  final emailValidation = Validation(
    name: i18n.translate.email_or_username,
    isRequired: true,
  );

  final passwordValidation = Validation(
    name: i18n.translate.password,
    isRequired: true,
    min: 6,
  );

  SignInForm({this.formKey});

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<SignInCubit>();

    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildEmailField(bloc),
          SizedBox(
            height: Spacing.defaultSpacing,
          ),
          buildPasswordField(bloc),
        ],
      ),
    );
  }

  CTextField buildEmailField(SignInCubit bloc) {
    return CTextField(
      intialValue: bloc.state.email,
      text: emailValidation.name,
      inputType: TextInputType.emailAddress,
      validator: (text) => emailValidation.withUpdatedValue(text).validate(),
      onChanged: (text) {
        bloc.emailChanged(text);
      },
    );
  }

  CTextField buildPasswordField(SignInCubit bloc) {
    return CTextField(
      text: passwordValidation.name,
      obscureText: true,
      validator: (text) => passwordValidation.withUpdatedValue(text).validate(),
      onChanged: (text) {
        bloc.passwordChanged(text);
      },
    );
  }
}
