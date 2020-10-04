import 'package:flutter/material.dart';
import 'package:mobile/global/utils/i18n.dart';
import 'package:mobile/global/widgets/logo.dart';
import 'package:mobile/helpers/images.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(IMG.global.bgPNG),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    i18n.text('landing_sentence'),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text(
                      i18n.text('sign_up'),
                    ),
                    onPressed: () => {},
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  RaisedButton(
                    child: Text(
                      i18n.text('sign_in'),
                    ),
                    onPressed: () => {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
