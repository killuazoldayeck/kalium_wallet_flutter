import 'package:flutter/material.dart';
import 'package:kalium_wallet_flutter/colors.dart';
import 'package:kalium_wallet_flutter/ui/util/exceptions.dart';

enum KaliumButtonType { PRIMARY, PRIMARY_OUTLINE }

void doNothing() {
  return;
}

//Standard Yellow Kalium Button
Widget buildKaliumButton(KaliumButtonType type, String buttonText, List<double> dimens, { Function onPressed = doNothing } ) {
  switch (type) {
    case KaliumButtonType.PRIMARY:
      return Expanded(
        child: Container(
          margin:
              EdgeInsets.fromLTRB(dimens[0], dimens[1], dimens[2], dimens[3]),
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
            color: yellow,
            child: Text(buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w700, color: greyLight)),
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
            onPressed: () {
              onPressed();
            },
            highlightColor: greyLight40,
            splashColor: greyLight40,
          ),
        ),
      );
    case KaliumButtonType.PRIMARY_OUTLINE:
  return Expanded(
    child: Container(
      margin:
          EdgeInsets.fromLTRB(dimens[0], dimens[1], dimens[2], dimens[3]),
      child: OutlineButton(
        textColor: yellow,
        borderSide: BorderSide(color: yellow, width: 2.0),
        highlightedBorderColor: yellow,
        splashColor: yellow30,
        highlightColor: yellow15,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        child: Text(buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.w700, color: yellow)),
        padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20),
        onPressed: () {
          onPressed();
        },
      ),
    ),
  );
    default:
      throw new UIException("Invalid Button Type ${type}");
  }
} //
