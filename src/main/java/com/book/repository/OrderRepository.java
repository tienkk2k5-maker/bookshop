package com.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.book.model.Order;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findByUser_IdOrderByOrderDateDesc(Integer userId);
    List<Order> findAllByOrderByOrderDateDesc();
}
