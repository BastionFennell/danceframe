import DS from 'ember-data';

export default DS.Model.extend({
  danceFrame: DS.belongsTo('danceFrame'),
  todoProgress: DS.attr()
});
