const logger = new Proxy(console, {
  get(target, prop, receiver) {
    const value = target[prop];
    if (typeof value === 'function') {
      return function (...args) {
        return value.apply(this === receiver ? target : this, [`[Logger]:`, ...args]);
      };
    }
    return value;
  }
});
