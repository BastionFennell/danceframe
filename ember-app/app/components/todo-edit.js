import Ember from 'ember';

export default Ember.Component.extend({
  emberTodoList: function(){
    return Ember.A(this.get("todoList"));
  }.property("todoList"),

  actions: {
    removeTodo: function(index){
      this.get("emberTodoList").removeAt(index);
    },

    addTodo: function(){
      this.get("emberTodoList").pushObject("");
    },

    saveTodoList: function(){
      this.sendAction("saveTodoList", this.get("emberTodoList"));
    },

    updateTodo: function(value, index){
      var updatedArray = this.get('emberTodoList');
      updatedArray[index] = value;
      this.set("emberTodoList", updatedArray);
    }
  }
});
