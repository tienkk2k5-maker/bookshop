package com.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.book.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Integer> {
}