import Ember from 'ember';

export default Ember.Route.extend({
  auth: Ember.inject.service('current-user'),

  model: function(params){
    return this.store.findRecord("event", params.id);
  },

  actions: {
    addEvent: function(event){
      var df = this.store.createRecord("danceFrame");
      console.log('doot');
      df.set("user", this.get("auth.user"));
      df.set("event", event);
      df.save();
    }
  }
});
