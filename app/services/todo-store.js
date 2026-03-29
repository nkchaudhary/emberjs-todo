import Service from '@ember/service';
import { tracked } from '@glimmer/tracking';

export default class TodoStoreService extends Service {
  @tracked todos = [];

  addTodo(text) {
    if (!text.trim()) return;

    this.todos = [
      ...this.todos,
      {
        id: Date.now(),
        text,
        completed: false
      }
    ];
  }

  toggleTodo(id) {
    this.todos = this.todos.map(todo =>
      todo.id === id ? { ...todo, completed: !todo.completed } : todo
    );
  }

  deleteTodo(id) {
    this.todos = this.todos.filter(todo => todo.id !== id);
  }
}