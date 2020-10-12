part of 'widgets.dart';

class SignInForm extends StatelessWidget {
  final formKey;
  final emailValidation = Validation(
    name: AppLocaleStrings.emailOrUsername,
    isRequired: true,
  );

  final passwordValidation = Validation(
    name: AppLocaleStrings.password,
    isRequired: true,
    min: 6,
  );

  SignInForm({this.formKey});

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<SignInBloc>();
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

  CTextField buildEmailField(SignInBloc bloc) {
    return CTextField(
      intialValue: bloc.state.email,
      text: emailValidation.name,
      inputType: TextInputType.emailAddress,
      validator: (text) => emailValidation.withUpdatedValue(text).validate(),
      onChanged: (text) {
        bloc.add(SignInEmailChanged(text));
      },
    );
  }

  CTextField buildPasswordField(SignInBloc bloc) {
    return CTextField(
      text: passwordValidation.name,
      obscureText: true,
      validator: (text) => passwordValidation.withUpdatedValue(text).validate(),
      onChanged: (text) {
        bloc.add(SignInPasswordChanged(text));
      },
    );
  }
}
