import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){
    return this.store.queryRecord("event", {facebook_id: params.id});
  },

  setupController(controller, model){
    controller.set("model", model[0]);
  }
});
