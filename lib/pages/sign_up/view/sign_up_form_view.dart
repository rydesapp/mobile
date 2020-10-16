import 'package:flutter/material.dart';
import 'package:mobile/blocs/sign_up/sign_up.dart';
import 'package:mobile/global/widgets/widgets.dart';
import 'package:mobile/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFormView extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SignUpFormView({Key key, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final bloc = context.bloc<SignUpCubit>();

    return Column(
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        SignUpForm(
          formKey: formKey,
        ),
        SizedBox(
          height: height * 0.1,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SubmitButton(
              onPressed: () {
                if (!formKey.currentState.validate()) {
                  return;
                }
                bloc.submit();
              },
            )
          ],
        )
      ],
    );
    ;
  }
}
