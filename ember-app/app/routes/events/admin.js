import Ember from 'ember';

export default Ember.Route.extend({
  auth: Ember.inject.service('current-user'),

  model: function(params){
    return this.store.findRecord("event", params.id);
  },

  actions: {
    saveTodoList: function(updatedTodoList){
      this.set("controller.model.todoList", updatedTodoList);
      this.get("controller.model").save();
    }
  }
});
