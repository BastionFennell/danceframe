import DS from 'ember-data';

export default DS.Model.extend({
  event: DS.belongsTo('event'),
  user: DS.belongsTo('user'),
  preEvent: DS.belongsTo('preEvent')
});
