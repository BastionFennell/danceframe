import Ember from 'ember';

export default Ember.Component.extend({
  progress: Ember.computed.alias('danceframe.preEvent.todoProgress'),

  todo: Ember.computed.alias('danceframe.event.todoList'),

  fullTodo: function(){
    var fullTodo = [];
    var i;

    if( !this.get("progress") || !this.get("todo"))
      return

    for(i = 0; i < this.get("todo.length"); i++){
      fullTodo[i] = {
        todo: this.get("todo").objectAt(i),
        progress: this.get("progress").objectAt(i) || false
      };
    }
    return fullTodo;
  }.property('todo', 'progress'),

  actions: {
    toggleProgress: function(index, danceframe){
      this.sendAction('toggleProgress', index, danceframe);
    }
  }
});
