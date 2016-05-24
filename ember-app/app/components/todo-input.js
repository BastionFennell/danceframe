import Ember from 'ember';

export default Ember.Component.extend({
  tagName: 'span',

  actions: {
    updateTodo: function(value){
      this.sendAction('updateTodo', value, this.get("index"));
    }
  }
});
