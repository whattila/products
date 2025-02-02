import { ProductHeader } from "src/product/product.header.dto";

export class PaginatedResponse {
    data: ProductHeader[];
    nextPage: number | null;

    constructor(data: ProductHeader[], nextPage: number | null) {
        this.data = data;
        this.nextPage = nextPage;
    }
}