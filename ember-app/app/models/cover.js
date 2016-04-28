import DS from 'ember-data';

export default DS.Model.extend({
  offsetX: DS.attr('number'),
  offsetY: DS.attr('number'),
  facebookId: DS.attr('number'),
  source: DS.attr('string'),
  event: DS.belongsTo('event')
});
