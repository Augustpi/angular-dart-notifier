# notifier

Angular Dart Web Notifier (like push notification but just for inside angular dart the web app.)


![Angular dart Notifier](https://woorklab.com/images/notifier.png)

[Angular dart web notifier demo page](https://augustpi.github.io/angular-dart-notifier/)

* First step import notifier.dart file in the **lib/src/** directory

```
  void sendNotifier(String type, String title, String content, int duration){
    Notifier(type, title, content, duration).show();
 }
```


```
Notifier('info', 'title', 'content here', 1000).show();
```

* **info** -> 'success', 'info', 'todo', 'reminder', 'warning' and 'danger' select one of them, 
* **duration** int **milliseconds**

![Angular dart notifier example](https://woorklab.com/images/notifier2.png)




A web app that uses [AngularDart](https://webdev.dartlang.org/angular) 
