import Ember from 'ember';

export default Ember.Controller.extend({
  auth: Ember.inject.service('current-user'),

  firstFrame: Ember.computed.alias('danceframes.firstObject'),

  danceframesWithoutFirst: function(){
    if(this.get('danceframes')){
      return this.get('danceframes').slice(1);
    }
    else {
      return [];
    }
  }.property('danceframes'),

  danceframes: function(){
    return this.get('auth.user.danceFrames');
  }.property('auth.user.danceFrames.@each')
});
