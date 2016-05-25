import Ember from 'ember';

export default Ember.Route.extend({
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
