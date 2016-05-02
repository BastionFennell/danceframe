import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){
    var new_event = this.store.createRecord("event", {
                     facebookId: params.id
    });
    new_event.save();
  }
});
