import Ember from 'ember';

export default Ember.Controller.extend({
  auth: Ember.inject.service('current-user'),

  danceframes: function(){
    return this.get("auth.user.danceFrames");
  }.property('auth.user.danceFrames.@each')
});
