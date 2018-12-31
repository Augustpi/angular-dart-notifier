import 'package:angular/angular.dart';
import 'package:notifier/src/notifier.dart';

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives,
  ],
)
class AppComponent {

  void sendNotifier(String type, String title, String content, int duration){
    
    Notifier(type, title, content, duration).show();

  }

}
