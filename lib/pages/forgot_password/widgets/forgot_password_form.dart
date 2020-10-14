part of 'widgets.dart';
class ForgotPassworForm extends StatelessWidget {
  ForgotPassworForm({
    Key key,
    @required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final emailValidation = Validation(
    name: i18n.translate.email_or_username,
    isRequired: true,
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final bloc = context.bloc<ForgotPasswordCubit>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          CTextField(
            text: i18n.translate.email_or_username,
            inputType: TextInputType.emailAddress,
            validator: (text) =>
                emailValidation.withUpdatedValue(text).validate(),
            onChanged: (text) => bloc.changeEmail(text),
          ),
          SizedBox(
            height:
                (height * 0.2) - Spacing.defaultSpacing + Spacing.labelSpacing,
          ),
        ],
      ),
    );
  }
}
