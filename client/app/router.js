import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('members', function() {
    this.resource('member', { path: '/:member_id' });
  });
});

export default Router;
