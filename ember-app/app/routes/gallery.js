import Ember from 'ember';

export default Ember.Route.extend({
  auth: Ember.inject.service('current-user'),

  model: function(){
    return this.store.query('danceFrame', {includes: 'event', sort: 'sort_id', user_id: this.get('auth.user.id')});
  },

  actions: {
    toggleProgress: function(index, danceframe){
      var preEvent = danceframe.get('preEvent');
      if(!preEvent.get('todoProgress')) {
        this.set('danceframe.preEvent.todoProgress', []);
      }
      preEvent.get('todoProgress')[index] = !preEvent.get('todoProgress')[index];
      preEvent.get('content').save();
    }
  }
});
