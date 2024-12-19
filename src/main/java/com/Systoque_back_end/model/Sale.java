package com.Systoque_back_end.model;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "sales")
public class Sale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private int quantitySold;
    private BigDecimal totalValue;

    @Column(name = "sale_date", updatable = false)
    private LocalDateTime saleDate = LocalDateTime.now();
}
