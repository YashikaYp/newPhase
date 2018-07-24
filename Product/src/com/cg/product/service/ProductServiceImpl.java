package com.cg.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.product.beans.ProductEntity;
import com.cg.product.repo.ProductRepo;

@Component(value = "service")
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepo repo;

	@Override
	public ProductEntity saveProduct(ProductEntity product) {

		return repo.save(product);
	}

	@Override
	public List<ProductEntity> getAllProducts() {

		return repo.findAll();
	}

	@Override
	public ProductEntity getProductById(int id) {

		ProductEntity p = repo.findOne(id);
		return p;
	}

	@Override
	public ProductEntity updateProduct(ProductEntity product) {

		return repo.save(product);
	}

}
