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
  this.route('profile', function() {
    this.route('show', {path: "/:id"});
  });
});

export default Router;
