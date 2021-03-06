import Ember from 'ember';

export default Ember.Component.extend({
  items: [{active: true}, {active: false}, {active: false}],
  init: function() {
    this._super(...arguments);
    this.set('items.firstObject.active', true);
  },

  didInsertElement: function() {
    console.log("init");
    this.$('carousel').carousel();
  },

  actions: {
    previousSlide: function() {
      console.log("previous");
      this.$('.carousel').carousel('prev');
    },
    nextSlide: function() {
      this.$('.carousel').carousel('next');
    }
  }
});
