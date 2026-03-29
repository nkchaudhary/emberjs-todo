import { module, test } from 'qunit';
import { setupTest } from 'ember-todo-app/tests/helpers';

module('Unit | Service | todo-store', function (hooks) {
  setupTest(hooks);

  // TODO: Replace this with your real tests.
  test('it exists', function (assert) {
    let service = this.owner.lookup('service:todo-store');
    assert.ok(service);
  });
});
