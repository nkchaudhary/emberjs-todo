import { module, test } from 'qunit';
import { setupRenderingTest } from 'ember-todo-app/tests/helpers';
import { render } from '@ember/test-helpers';
import TodoInput from 'ember-todo-app/components/todo-input';

module('Integration | Component | todo-input', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Updating values is achieved using autotracking, just like in app code. For example:
    // class State { @tracked myProperty = 0; }; const state = new State();
    // and update using state.myProperty = 1; await rerender();
    // Handle any actions with function myAction(val) { ... };

    await render(<template><TodoInput /></template>);

    assert.dom().hasText('');

    // Template block usage:
    await render(<template>
      <TodoInput>
        template block text
      </TodoInput>
    </template>);

    assert.dom().hasText('template block text');
  });
});
