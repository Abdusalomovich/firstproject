import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool checked = true;
  bool _checked = true;
  bool _checked1 = true;
  bool _checked2 = true;
  bool _checked3 = true;
  int _radio = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "English",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "system",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (value) {
                                              setState(() {
                                                this._radio = value!;
                                              });
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'English'
                                              : index == 1
                                                  ? "O'zbek"
                                                  : 'Русский'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Screen orientation",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Auto",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Screen orientation",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'Auto'
                                              : index == 1
                                                  ? "Portraint"
                                                  : 'Album'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Districk size",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Normal",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Districk size",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 240,
                            child: Column(
                              children: [0, 1, 2, 3, 4]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'Micro'
                                              : index == 1
                                                  ? "Small"
                                                  : index == 2
                                                      ? "Normal"
                                                      : index == 3
                                                          ? "Big"
                                                          : 'Small'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Unassigned bookings text size",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Normal",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Appearance",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Dark",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text(
                    "Remind to start the taximeter",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "When driving while waiting for a client",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  activeColor: Colors.green,
                  value: _checked,
                  onChanged: (value) {
                    setState(() {
                      _checked = value!;
                    });
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text(
                    "Confirmation of start, stop",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Ask for a confirmation to start/stop taximeter",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  activeColor: Colors.green,
                  value: checked,
                  onChanged: (value) {
                    setState(() {
                      checked = value!;
                    });
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text(
                    "Time confirmation",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Ask for a confirmation to set arrival time at the passenge's place",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  activeColor: Colors.green,
                  value: _checked1,
                  onChanged: (value) {
                    setState(() {
                      _checked1 = value!;
                    });
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text(
                    "Confirmation Arrived ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Ask for a  confirmation upon arrival at the passenge's location",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  activeColor: Colors.green,
                  value: _checked2,
                  onChanged: (value) {
                    setState(() {
                      _checked2 = value!;
                    });
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Navigator system",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Maps.Me",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Sound notifications",
                        style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Incoming booking sound",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        "Default",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.blueGrey,
                              title: Text(
                                "Language",
                                style: TextStyle(color: Colors.white),
                              ),
                              content: Container(
                                height: 150,
                                child: Column(
                                  children: [0, 1, 2]
                                      .map((int index) => Row(
                                            children: [
                                              Radio<int>(
                                                activeColor: Colors.green,
                                                value: index,
                                                groupValue: this._radio,
                                                onChanged: (int? value) {
                                                  if (value != null) {
                                                    setState(() {
                                                      this._radio = value;
                                                    });
                                                  }
                                                },
                                              ),
                                              Text(index == 0
                                                  ? 'No sound'
                                                  : index == 1
                                                      ? "Default"
                                                      : 'Custom sound'),
                                            ],
                                          ))
                                      .toList(),
                                ),
                              ),
                              actions: <Widget>[
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: ElevatedButton(
                                    child: Text(
                                      "CANCEL",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    height: 40,
                                    width: 110,
                                    child: ElevatedButton(
                                      child: Text(
                                        "OK",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Unassigned booking sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Pro-booking sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Incoming next booking sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "New pre-booking sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Booking confirmed sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Booking changed sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Booking canceled sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Taximeter paused sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "In-app notification sound ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "In-app notification sound ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "The sound of a taximeter not running",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [0, 1, 2]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(index == 0
                                              ? 'No sound'
                                              : index == 1
                                                  ? "Default"
                                                  : 'Custom sound'),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: ListTile(
                  title: Text(
                    "Lost connection sound",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.blueGrey,
                          title: Text(
                            "Language",
                            style: TextStyle(color: Colors.white),
                          ),
                          content: Container(
                            height: 150,
                            child: Column(
                              children: [
                                0,
                                1,
                                2,
                              ]
                                  .map((int index) => Row(
                                        children: [
                                          Radio<int>(
                                            activeColor: Colors.green,
                                            value: index,
                                            groupValue: this._radio,
                                            onChanged: (int? value) {
                                              if (value != null) {
                                                setState(() {
                                                  this._radio = value;
                                                });
                                              }
                                            },
                                          ),
                                          Text(
                                            index == 0
                                                ? 'No sound'
                                                : index == 1
                                                    ? "Default"
                                                    : 'Custom sound',
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                          actions: <Widget>[
                            Container(
                              height: 40,
                              width: 110,
                              child: ElevatedButton(
                                child: Text(
                                  "CANCEL",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 40,
                                width: 110,
                                child: ElevatedButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Print",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 18),
                        ),
                      ),
                      CheckboxListTile(
                        title: Text(
                          "Enable printing support ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          "",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.platform,
                        activeColor: Colors.green,
                        value: _checked3,
                        onChanged: (value) {
                          setState(() {
                            _checked3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
