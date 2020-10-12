part of 'widgets.dart';

class SignInPadding extends StatelessWidget {
  final double height;

  const SignInPadding({Key key, this.height}) : super(key: key);

  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.1,
    );
  }
}
