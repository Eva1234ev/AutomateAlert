# automate_alert

A new Flutter package which helps developers create automated closed pop up alert
 
# Screen

<img src="https://github.com/Eva1234ev/AutomateAlert/blob/master/demo1.gif?raw=true" width="270"> <img src="https://github.com/Eva1234ev/AutomateAlert/blob/master/demo2.gif?raw=true" width="270">


## Features

- Adding buttons dynamically (as much as you want)
- Predefined beautiful alert styles (success, error, warning, info)
- Set animation duration
- Reusable alert styles

## Usage

[Example](https://github.com/Eva1234ev/AutomateAlert/edit/blob/master/example/example.dart)

TO use this plugin:
 * add dependency to your [pabspec.yaml] (https://github.com/Eva1234ev/AutomateAlert/edit/blob/master/pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
    automate_alert:
```


### How to use?

```dart
//Simple error buton to show auto alert 
FloatingActionButton.extended(
                  onPressed: () {
                    AlertNoServerAutoDialog(
                        context: context,
                        message: "Can not connect server!",
                        subMessage:
                            'Please try again and check your internet connection',
                        alertType: AlertType.Error,
                        showDuration: 4)
                      ..show();
                  },
                  label: Text('Error Alert',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  icon: Icon(Icons.error, color: Colors.white),
                  backgroundColor: Colors.redAccent,
                ),
```
# License 

Copyright (c) 2021 Eva

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
