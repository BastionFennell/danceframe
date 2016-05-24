import Ember from 'ember';

export default Ember.Controller.extend({
  auth: Ember.inject.service('current-user'),

  notInGallery: function(){
    //FIXME: There's gotta be a more efficient way to do this check
    return !this.get('model.danceFrames').filterBy('user.id', this.get('auth.user.id')).length;
  }.property('model.danceFrames', 'model.danceFrames.@each.user')
});
