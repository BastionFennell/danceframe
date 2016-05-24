import { moduleForComponent, test } from 'ember-qunit';
import hbs from 'htmlbars-inline-precompile';

moduleForComponent('cover-photo-frame', 'Integration | Component | cover photo frame', {
  integration: true
});

test('it renders', function(assert) {
  // Set any properties with this.set('myProperty', 'value');
  // Handle any actions with this.on('myAction', function(val) { ... });

  this.render(hbs`{{cover-photo-frame}}`);

  assert.equal(this.$().text().trim(), '');

  // Template block usage:
  this.render(hbs`
    {{#cover-photo-frame}}
      template block text
    {{/cover-photo-frame}}
  `);

  assert.equal(this.$().text().trim(), 'template block text');
});
