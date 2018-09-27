# Angular dart web notifier 
## Welcome to the angular-dart-notifier wiki!

![Angular dart Notifier](https://woorklab.com/images/notifier.png)

## Demo link

[Angular dart web notifier demo page](https://augustpi.github.io/angular-dart-notifier/)


## How to use

* First step import `notifier.dart` file in the **lib/src/** directory
* and import notifier.css file 


```
  void sendNotifier(String type, String title, String content, int duration){
    Notifier(type, title, content, duration).show();
 }
```


```
Notifier('info', 'title', 'content here', 1000).show();
```

* **type** -> 'success', 'info', 'todo', 'reminder', 'warning' and 'danger' select one of them, 
* **duration** int **milliseconds**

![Angular dart notifier example](https://woorklab.com/images/notifier2.png)

## Dartlang and AngularDart

For Dartlang please visit [Dartlang](https://www.dartlang.org) and [Github repo](https://github.com/dart-lang),
For AngularDart [AngularDart](http://angulardart.org) and [Github](https://github.com/dart-lang/angular)

## Contribute
Our project is, without any discrimination, open to anyone who is willing to make a contribution!

## License
Our project is licensed under MIT license.
