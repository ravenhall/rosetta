export
default class Farm {

    constructor(animals) {
        animals.forEach(function(animalType) {
            this.animals.push(new Animal(animalType));
        });
    }


    // Class methods
    sing() {
        console.log("Old McDonald had a farm, EIEIO!");

        animals.forEach(function(animal) {
        var type = animal.type;
        var sound = animal.sound;
        console.log("And on that farm he had a " + type + ", EIEIO!");
        console.log("With a " + sound + " " + sound + "here");
        console.log("And a " + sound + " " + sound + "there");
        console.log("Here a " + sound + "there a " + sound + ",");
        console.log("Everywhere a " + sound + " " + sound + ",");
        console.log("Old McDonald had a farm,\n EIEIO!");
        });
    }
}
