import Component from '@glimmer/component';
import { action } from '@ember/object';

export default class TodoItemComponent extends Component {
  @action toggle() {
    this.args.onToggle(this.args.todo.id);
  }

  @action delete() {
    this.args.onDelete(this.args.todo.id);
  }
}