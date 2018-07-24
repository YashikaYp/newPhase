package com.cg.product.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.product.beans.ProductEntity;

public interface ProductRepo extends JpaRepository<ProductEntity, Integer>
{

}
