import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  TextEditingController textEditingController = TextEditingController(text: "");
  final intRegex = RegExp(r'\d+', multiLine: true);
  String _otpCode = "";

  @override
  void initState() {
    super.initState();
    _getSignatureCode();
    _startListeningSms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            SizedBox(
              height: context.screenHeight * .025,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter OTP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: context.screenHeight * .025,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter the OTP code that we have sent you to your number, please check your number and enter here OTP to verify.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: context.screenHeight * .03,
            ),
            TextFieldPin(
                textController: textEditingController,
                autoFocus: true,
                codeLength: 6,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 20.0,
                margin: 5,
                selectedBoxSize: 30.0,
                textStyle: const TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color:
                            Theme.of(context).primaryColor.withOpacity(0.6))),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {});
                  // _onOtpCallBack(code, false);
                }),
            ButtonWidget(
              onPressed: () {},
              text: "Verify",
            )
          ]),
        )));
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  _getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
    if (kDebugMode) {
      print("signature $signature");
    }
  }

  /// listen sms
  _startListeningSms() {
    SmsVerification.startListeningSms().then((message) {
      setState(() {
        _otpCode = SmsVerification.getCode(message, intRegex);
        textEditingController.text = _otpCode;
        // _onOtpCallBack(_otpCode, true);
      });
    });
  }
}
