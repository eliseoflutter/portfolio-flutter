import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key key}) : super(key: key);

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  String _url = 'https://elment9.github.io/portfolio/';
  num _index = 1;

  doneLoading(String url) {
    setState(() {
      _index = 0;
    });
  }

  startLoading(String url) {
    setState(() {
      _index = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _index,
          children: [
            _buildWebview(),
            _buildLoader(),
          ],
        ),
      ),
    );
  }

  _buildWebview() {
    return WebView(
      initialUrl: _url,
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: doneLoading,
      onPageStarted: startLoading,
    );
  }

  _buildLoader() {
    return Container(
      color: Color(0xff59BC9D),
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}
