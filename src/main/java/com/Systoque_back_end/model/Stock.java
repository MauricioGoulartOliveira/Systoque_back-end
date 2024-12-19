package com.Systoque_back_end.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "stock")
public class Stock {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    @Enumerated(EnumType.STRING)
    private com.systoque.systoque.model.OperationType operationType;

    private int quantity;

    @Column(name = "operation_date", updatable = false)
    private LocalDateTime operationDate = LocalDateTime.now();
}
