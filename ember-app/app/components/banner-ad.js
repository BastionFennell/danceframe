import Ember from 'ember';

export default Ember.Component.extend({
  adBlockExists: false,

  didInsertElement: function(){
    this.set('adBlockExists', $('.banner-ad').css('display') === "none");
  }

});
