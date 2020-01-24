export default class Animal {

    constructor(species, sound) {
        this.species = species;
        this.sound = sound;
        console.log("Created a " + species + " with sound: " + sound);
    }

    // getters
    get species() {
        return this.species;
    }
    get sound() {
        return this.sound;
    }

    // setters
    set species(s) {
        this.species = s;
    }
    set sound(s) {
        this.sound = s;
    }

    // class methods
    speak() {
        return this.sound;
    }

}