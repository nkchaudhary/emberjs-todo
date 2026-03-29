import Controller from '@ember/controller';
import { inject as service } from '@ember/service';
import { action } from '@ember/object';

export default class TodosController extends Controller {
  @service todoStore;

  get todos() {
    return this.todoStore.todos;
  }

  @action
  addTodo(text) {
    this.todoStore.addTodo(text);
  }

  @action
  toggleTodo(id) {
    this.todoStore.toggleTodo(id);
  }

  @action
  deleteTodo(id) {
    this.todoStore.deleteTodo(id);
  }
}