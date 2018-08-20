# Angular dart web notifier 
## Welcome to the angular-dart-notifier wiki!

![Angular dart Notifier](https://woorklab.com/images/notifier.png)

## Demo link

[Angular dart web notifier demo page](https://augustpi.github.io/angular-dart-notifier/)


## How to use

* First step import notifier.dart file in the **lib/src/** directory
* import notifier.css file 

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
