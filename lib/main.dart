import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_demo/clip.dart';
// import 'package:flutter_demo/constrainedBox.dart';
// import 'package:flutter_demo/decoratedbox.dart';
// import 'package:flutter_demo/transform.dart';
// import 'package:flutter_demo/padding.dart';
// import 'package:flutter_demo/align.dart';
// import 'package:flutter_demo/stack.dart';
// import 'package:flutter_demo/column.dart';
// import 'package:flutter_demo/flex.dart';
// import 'package:flutter_demo/wrap.dart';
// import 'package:flutter_demo/row.dart';
// import 'package:flutter_demo/form.dart';
// import 'package:flutter_demo/radiobutton.dart';
// import 'package:flutter_demo/button.dart';
// import 'package:flutter_demo/checkbox.dart';
// import 'package:flutter_demo/radio.dart';
// import 'package:flutter_demo/text.dart';
// import 'package:flutter_demo/imageicon.dart';
// import 'package:flutter_demo/textfile.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_plugin_record/index.dart';

void main() =>
    runApp(Directionality(textDirection: TextDirection.ltr, child: GEView())
        // DecoratedBox(
        //   key: GlobalKey(),
        //   decoration:BoxDecoration(),
        //   child:Text(
        //     'helloworld'*1000,
        //     textDirection: TextDirection.ltr
        //   )
        // )
        );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Learning')), body: null),
      // theme: ThemeData(primarySwatch: Colors.lightBlue)
    );
  }
}

class GEView extends StatefulWidget {
  GEView({Key key}) : super(key: key);
  @override
  _GEViewState createState() => _GEViewState();
}

class _GEViewState extends State<GEView> {
  WebViewController _controller;
  FlutterPluginRecord recordPlugin = new FlutterPluginRecord();
  String kNavigationExamplePage = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
    <title>APM</title>
    <style>
        body{
            width:100%;
            height:100%;
            background-color: black;
            display:flex;
            flex-direction:column;
            justify-content: space-around;
            align-items: center;
            font-size: 2vmin;
            user-select: none;
            position:fixed;
            top:0;
            left:0;
            overflow:hidden;
        }
        .record{
            width:6em;
            height:3em;
            display:flex;
            justify-content: center;
            align-items:center;
            background:white;
            border-radius: 1em;
            cursor:pointer;
            font-size:20px;
            user-select: none;
            position:relative;
            animation:
        }

        .record:after{
          content:'';
          position:absolute;
          width:100%;
          height:100%;
          top:0;
          left:0;
        }
        .box {
            background: lightcyan;
            border-radius: 1em;
            height: 7em;
            width: 17em;
            box-sizing: border-box;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .wifi-symbol {
            width: 50px;
            height: 50px;
            box-sizing: border-box;
            overflow: hidden;
            transform: rotate(135deg);

        }
        .wifi-circle {
            border: 5px solid #999999;
            border-radius: 50%;
            position: absolute;
        }

        .first {
            width: 5px;
            height: 5px;
            background: #cccccc;
            top: 45px;
            left: 45px;
        }

        .second {
            width: 25px;
            height: 25px;
            top: 35px;
            left: 35px;
            display:none;
        }

        .third {
            width: 40px;
            height: 40px;
            top: 25px;
            left: 25px;
            display:none;
        }

        @keyframes fadeInOut {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div id="recorebutton" class="record">按住录音</div>
     <div id="playbutton" class="box">
        <div class="wifi-symbol">
            <div class="wifi-circle first"></div>
            <div class="wifi-circle second"></div>
            <div class="wifi-circle third"></div>
        </div>
    </div>
    <script>
        var _btn = document.getElementById('recorebutton');
        var _play = document.getElementById('playbutton');
        _btn.addEventListener('touchstart',function(e){
            e.preventDefault();
            GERecord.postMessage('recordStart');
            return false;
        });
        _btn.addEventListener('touchend',function(e){
            GERecord.postMessage('recordStop')
        });
        _play.addEventListener('touchend',function(e){
            document.querySelector('.second').style.animation = 'animation: fadeInOut 1s infinite 0.2s';
            document.querySelector('.second').style.display = 'block';
            document.querySelector('.third').style.animation = 'fadeInOut 1s infinite 0.4s';
            document.querySelector('.third').style.display = 'block';
            GERecord.postMessage('recordPlay')
        });
    </script>
</body>
</html>
''';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: '',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _init();
        this._controller = webViewController;
        final String contentBase64 =
            base64Encode(const Utf8Encoder().convert(kNavigationExamplePage));
        this._controller.loadUrl('data:text/html;base64,$contentBase64');
      },
      javascriptChannels: <JavascriptChannel>[
        JavascriptChannel(
            name: 'GERecord',
            onMessageReceived: (JavascriptMessage message) {
              if (message.message == 'recordStart') {
                start();
              }
              if (message.message == 'recordStop') {
                stop();
              }
              if (message.message == 'recordPlay') {
                play();
              }
            })
      ].toSet(),
    );
  }

  void _init() async {
    recordPlugin.init();
  }

  void start() async {
    recordPlugin.start();
  }

  void stop() {
    recordPlugin.stop();
  }

  void play() {
    recordPlugin.play();
  }
}
