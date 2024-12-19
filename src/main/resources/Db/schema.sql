-- Tabela de fornecedores
CREATE TABLE suppliers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(100),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de produtos
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price NUMERIC(10, 2) NOT NULL,
    supplier_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON DELETE SET NULL
);

-- Tabela de estoque
CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

-- Tabela de vendas
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);
