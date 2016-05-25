import Ember from 'ember';

export default Ember.Controller.extend({
  auth: Ember.inject.service('current-user'),

  firstFrame: Ember.computed.alias('model.firstObject'),

  danceframesWithoutFirst: function(){
    if(this.get('model')){
      return this.get('model').slice(1);
    }
    else {
      return [];
    }
  }.property('model')
});
