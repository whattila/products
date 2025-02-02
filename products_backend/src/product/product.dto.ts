export class Product {
    id: string;
    name: string;
    price: number;
    percent: number;
    left: number;
    description: string;
    frontImageUri: string;
    otherImageUris: string[];

    constructor(id: string, name: string, price: number, percent: number, left: number, description: string, frontImageUri: string, otherImageUris: string[]) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.percent = percent;
        this.left = left;
        this.description = description;
        this.frontImageUri = frontImageUri;
        this.otherImageUris = otherImageUris;
    }
}