// Constructor
function Farm() {
    // instantiate animals
    var cow = new Cow();
    var pig = new Pig();
    var horse = new Horse();

}

// Class methods
Farm.prototype.sing = function() {
    Console.log("Old McDonald had a farm, EIEIO!");
    
    // TODO: construct array of animals
    var type = animal.type;
    var sound = animal.sound;
    Console.log("And on that farm he had a " + type + ", EIEIO!");
    Console.log("With a " + sound + " " + sound + "here");
    Console.log("And a " + sound + " " + sound + "there");
    Console.log("Here a " + sound + "there a " + sound + ",");
    Console.log("Everywhere a " + sound + " " + sound + ",");
    Console.log("Old McDonald had a farm,\n EIEIO!");
    };

// export class
module.exports = Animal;