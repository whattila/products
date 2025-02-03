export class ProductHeader {
    id: string;
    name: string;
    price: number;
    percent: number;
    left: number;
    frontImageUri: string;

    constructor(id: string, name: string, price: number, percent: number, left: number, frontImageUri: string) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.percent = percent;
        this.left = left;
        this.frontImageUri = frontImageUri;
    }
}