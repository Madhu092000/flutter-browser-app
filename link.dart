import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  Future<bool> canLaunchUrl(String url) async {
    try {
      return await canlaunch(url);
    } catch (e) {
      // Handle any exceptions that may occur during URL validation
      return false;
    }
  }
  launchUrl(String url) async {
    if (await canlaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          'Opening a Url',
          style: TextStyle(color: Colors.lightBlue),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('open Website here'),
          onPressed: () {
            launchUrl("https://madhu092000.github.io/myoffice.html/");
          },
        ),
      ),
    );
  }


  /// This method is deprecated. Use [newMethod] instead.
  @deprecated
  canLaunch(String url) {
    // Deprecated method implementation
  }

  canlaunch(String url) {
    // New method implementation
  }
  @deprecated
   Launch(String url) {
    // Deprecated method implementation
  }

  launch(String url) {
    // New method implementation
  }
}
