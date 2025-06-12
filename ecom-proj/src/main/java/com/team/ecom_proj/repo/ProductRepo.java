
package com.team.ecom_proj.repo;

import com.team.ecom_proj.model.Product;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepo extends JpaRepository<Product,Integer>{
    
   @Query("SELECT p from Product p WHERE " +
       "LOWER(p.name) LIKE LOWER(CONCAT('%', :Keyword, '%')) OR " +
       "LOWER(p.description) LIKE LOWER(CONCAT('%', :Keyword, '%')) OR " +
       "LOWER(p.brand) LIKE LOWER(CONCAT('%', :Keyword, '%')) OR " +
       "LOWER(p.category) LIKE LOWER(CONCAT('%', :Keyword, '%'))")
    List<Product>searchProducts(String Keyword);
}
