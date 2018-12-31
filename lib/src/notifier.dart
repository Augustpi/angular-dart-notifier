import 'dart:async';
import 'dart:html';

class Notifier {

  String type;
  String title;
  String content;
  Element container;
  int duration;
  int counter;
  
  Notifier(this.type, this.title, this.content, this.duration);

  show() {
    container = createContainer();
    createNotification(type, title, content, container, duration);
  }

  createContainer() {
    if (querySelector('#notifier-container') != null) {
      counter = querySelector('#notifier-container').children.length;
      counter += 1;
      return querySelector('#notifier-container');    
    } else {
      counter = 0;
      var element = _creteElement('div', {'id':'notifier-container', 'class':'notify container'});
      document.body.append(element);
      return querySelector('#notifier-container');
    }
  }

  createNotification(String type, String title, String content, Element container, int duration) {
    var itemId = 'notifier-item-'+ counter.toString();
    var itemEl = _creteElement('div', {'class':'notify item ' + type, 'id' : itemId});
    var titleEl = _creteElement('div', {'class': 'header'});
    var contentEl = _creteElement('div', {'class': 'content'});
    var clsEl = _creteElement('div', {'class': 'close-btn'});
    var iconEl = _creteElement('div', {'class': 'img img-' + type});

    titleEl.innerHtml = title;
    contentEl.innerHtml = content;
    clsEl.innerHtml = 'x';
    
    clsEl.onClick.listen((e) {
        closeNotification(itemId);
    });

    itemEl.append(clsEl);
    itemEl.append(titleEl);
    itemEl.append(iconEl);
    itemEl.append(contentEl);
    container.append(itemEl);
    
    Timer(
      Duration(milliseconds: 100), (){
      container.classes.add('z');
      itemEl.classes.add('show-notifier');
    });

    if (duration>0) {
      Timer(Duration(
        milliseconds: duration), (){
        closeNotification(itemId);
      });
    }
  }

  void closeNotification(String currentEl){
    querySelector('#'+currentEl).classes.remove('show-notifier');
    Timer(Duration(milliseconds: 600), querySelector('#'+currentEl).remove);
    Timer(Duration(milliseconds: 630), removeZ);
  }

  void removeZ() {
    if (querySelector('#notifier-container').children.length == 0) 
      querySelector('#notifier-container').classes.remove('z');
  }

  Element _creteElement(String el, Map<String, String> attrs) {
    var element = document.createElement(el);
    attrs.forEach((name, value) => element.setAttribute(name, value));
    return element;
  }
}