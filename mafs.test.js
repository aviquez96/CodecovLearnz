const {add, subtract} = require('./mafs');

test('adds 1 + 2 to equal 3', () => {
    expect(add(1, 2)).toBe(3);
});

test('subtracts 4 - 1 to equal 3', () => {
    expect(subtract(4, 2)).toBe(3);
});