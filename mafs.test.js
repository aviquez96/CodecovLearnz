const {add, subtract, multiply} = require('./mafs');

test('adds 1 + 2 to equal 3', () => {
    expect(add(1, 2)).toBe(3);
});

test('subtracts 4 - 1 to equal 3', () => {
    expect(subtract(4, 1)).toBe(3);
}); 

// test('multiplies 5 * 6 to equal 30', () => {
//     expect(multiply(5, 6)).toBe(30);
// });  