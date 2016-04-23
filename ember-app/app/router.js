import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('events', function() {
    this.route('show', {path: "show/:id"});
    this.route('new', {path: "new/:id"});
  });
});

export default Router;
