import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isHover = false;

  void _onHover(PointerEvent details) {
    setState(() {
      _isHover = true;
    });
  }
  void _onExit(PointerEvent details) {
    setState(() {
      _isHover = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          // top right menu
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 10, right: 10),
            child: Text(
              "Gmail",
              style: TextStyle(fontSize: 13.0, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 10, right: 10),
            child: Text(
              "Images",
              style: TextStyle(fontSize: 13.0, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              Icons.apps,
              color: Color(0xFF70757a),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage('assets/images/googlelogo.png'),
                backgroundColor: Colors.grey,
              )),
        ],
      ),
      // footer area
      bottomSheet: Container(
        color: Color(0xFFf2f2f2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 35, right: 10),
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20, right: 10),
                  child: Text(
                    "Advertising",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20, right: 10),
                  child: Text(
                    "Business",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 20, right: 10),
                  child: Text(
                    "How search works",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 10, right: 25),
                  child: Text(
                    "Privacy",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 2, right: 10),
                  child: Text(
                    "Terms",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, left: 20, right: 35),
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // center area
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/googlelogo.png'),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 582,
                  height: 50,
                  child: MouseRegion(
                    onHover: _onHover,
                    onExit: _onExit,
                    child: Container(
                      child: TextField(
                        enableInteractiveSelection: true,
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                borderSide:
                                    BorderSide(color: Color(0xFFdfe1e5))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                borderSide:
                                    BorderSide(color: Color(0xFFdfe1e5))),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(24.0),
                              ),
                            ),
                            filled: true,
                            hoverColor: Colors.white,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: const Icon(
                                Icons.search,
                                color: Color(0xFF70757a),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Image.asset('assets/images/mic.png',width: 5,
                                height: 5,fit: BoxFit.fitWidth,),
                            ),
                            suffixStyle:
                                const TextStyle(color: Color(0xFF70757a)),
                            // filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color:
                                _isHover ? Color(0xFF20212447) : Colors.white,
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 140, height: 36),
                      child: ElevatedButton(
                          child: Text("Google Search",
                              style: TextStyle(fontSize: 14)),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFf8f9fa)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ))),
                          onPressed: () => null),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 140, height: 36),
                      child: ElevatedButton(
                          child: Text("I'm Feeling Lucky",
                              style: TextStyle(fontSize: 14)),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFf8f9fa)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ))),
                          onPressed: () => null),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Google offered in: فارسی',
                ),
                SizedBox(
                  height: 370,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
