package com.cg.product.service;

import java.util.List;

import com.cg.product.beans.ProductEntity;

public interface ProductService 
{

	public ProductEntity saveProduct(ProductEntity product);
	public List<ProductEntity>getAllProducts();
	public ProductEntity getProductById(int id);
	public ProductEntity updateProduct(ProductEntity product);
}
