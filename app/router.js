import Ember from 'ember';
import config from './config/environment';
import spreeRouter from 'spree-ember-storefront/router';
import spreeAuthRouter from 'spree-ember-auth/router';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  spreeRouter(this, config),
  spreeAuthRouter(this, config)
});

export default Router;
