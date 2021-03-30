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

