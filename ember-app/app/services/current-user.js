import Ember from 'ember';

export default Ember.Service.extend({
  store: Ember.inject.service(),
  user: null,

  init() {
    this._super(...arguments);
    var _this = this;
    this.get("store").findRecord('user', 'me').then(function(user){
      _this.set('user', user);
    }, function(){})
  }
});
