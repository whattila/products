export class ProductHeader {
    id: string;
    name: string;
    price: number;
    percent: number;
    left: number;

    constructor(id: string, name: string, price: number, percent: number, left: number) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.percent = percent;
        this.left = left;
    }
}