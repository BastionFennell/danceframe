import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params){
    return this.store.queryRecord("event", {facebookId: params.id});
  }
});
