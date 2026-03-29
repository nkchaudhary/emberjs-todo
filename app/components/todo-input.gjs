import Component from '@glimmer/component';
import { action } from '@ember/object';
import { tracked } from '@glimmer/tracking';

export default class TodoInputComponent extends Component {
  @tracked text = '';

  @action
  updateText(event) {
    this.text = event.target.value;
  }

  @action
  addTodo() {
    let value = this.text?.trim();
    if (!value) return;

    if (this.args.onAdd) {
      this.args.onAdd(value);
    }

    this.text = '';
  }
}