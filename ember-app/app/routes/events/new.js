import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){
    event = this.store.createRecord("event", {
                     facebookId: params.id
    })
    event.save()
  }
});
