// Constructor
function Animal() {
    
}

// Class methods
Animal.prototype.speak = function(animal) {
    var sound = animal.sound;
    return sound;
    };

// export class
module.exports = Animal;