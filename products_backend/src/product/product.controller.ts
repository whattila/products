import { Controller, Get, Param, Query } from "@nestjs/common";
import { ProductService } from "./product.service";
import { ProductHeader } from "./product.header.dto";
import { Product } from "./product.dto";
import { PaginationDto } from "src/utilities/pagination.dto";
import { PaginatedResponse } from "src/utilities/pagination_response.dto";

@Controller('products')
export class ProductController {
    constructor(private readonly productService: ProductService) {}

    @Get()
    async getAllProducts(@Query() paginationDto: PaginationDto): Promise<PaginatedResponse> {
        return this.productService.getAllProducts(paginationDto);
    }

    @Get(':id')
    async getProduct(@Param('id') id: string): Promise<Product> {
        return this.productService.getProduct(id);
    }
}