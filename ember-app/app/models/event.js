import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  description: DS.attr('string'),
  facebookId: DS.attr('number'),
  cover: DS.belongsTo('cover'),
  startTime: DS.attr(),
  endTime: DS.attr(),
  danceFrames: DS.hasMany('danceFrame'),
  todoList: DS.attr()
});
