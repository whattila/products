import { Injectable, NotFoundException } from "@nestjs/common";
import { ProductHeader } from "./product.header.dto";
import { Product } from "./product.dto";
import { PaginationDto } from "src/utilities/pagination.dto";
import { PaginatedResponse } from "src/utilities/pagination_response.dto";

@Injectable()
export class ProductService {

    static readonly products = [
        new Product("product1", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"]),
        new Product("product2", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"]),
        new Product("product3", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"]),
        new Product("product4", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"]),
        new Product("product5", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"]),
        new Product("product6", "iPhone 7", 549, 94, 128, "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", "image1", ["image2", "image3", "image4", "image5"])
    ];

    async getAllProducts(paginationDto: PaginationDto): Promise<PaginatedResponse> {
        // TODO: Edge Cases!
        const { limit = ProductService.products.length, offset = 0 } = paginationDto;
        const end = Number(limit) + Number(offset);
        const paginatedProducts = ProductService.products.slice(offset, end).map(this._createProductHeader);
        return new PaginatedResponse(paginatedProducts, end < ProductService.products.length ? end : null);
    }

    async getProduct(id: string): Promise<Product> {
        const foundProduct = ProductService.products.find(product => {return product.id === id});
        if (foundProduct === undefined) {
            throw new NotFoundException("Product not found");
        }
        return foundProduct;
    }

    _createProductHeader(product: Product): ProductHeader {
        return new ProductHeader(product.id, product.name, product.price, product.percent, product.left);
    }
}