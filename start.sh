#!/bin/bash

echo '-----> Remove links'
rm -rf node_modules/spree-ember-core
rm -rf node_modules/spree-ember-checkouts
rm -rf node_modules/spree-ember-auth
rm -rf node_modules/spree-ember-storefront

echo '-----> Create links'
ln -s ../vendor/modules/spree-ember/packages/core node_modules/spree-ember-core
ln -s ../vendor/modules/spree-ember/packages/checkouts node_modules/spree-ember-checkouts
ln -s ../vendor/modules/spree-ember/packages/auth node_modules/spree-ember-auth
ln -s ../vendor/modules/spree-ember/packages/storefront node_modules/spree-ember-storefront

echo "-----> start ember"
ember server --watcher polling --proxy http://zerotreze.lvh.me
