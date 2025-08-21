---Part b
CREATE TABLE televisions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    catalog_number TEXT NOT NULL UNIQUE,
    brand TEXT NOT NULL CHECK (brand IN ('Samsung', 'LG', 'Sony')),
    model TEXT NOT NULL,
    screen_size INTEGER NOT NULL CHECK (screen_size > 0),
    resolution TEXT NOT NULL CHECK (resolution IN ('4K', '8K', 'Full HD')),
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0),
    stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0),
    release_year INTEGER NOT NULL CHECK (release_year BETWEEN 2000 AND 2025),
    smart_tv TEXT NOT NULL CHECK (smart_tv IN ('Yes', 'No')),
    os TEXT CHECK (
        (smart_tv = 'Yes' AND os IS NOT NULL) OR
        (smart_tv = 'No' AND os IS NULL)
    ),
    panel_type TEXT NOT NULL CHECK (panel_type IN ('OLED', 'QLED', 'LED'))


 
);

INSERT INTO televisions (
    catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type
) VALUES (
    'LG-OLED55A2-2023', 'LG', 'OLED55A2', 55, '4K', 4999.00, 10, 2023, 'Yes', 'webOS', 'OLED'
);

INSERT INTO televisions (
    catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type
) VALUES (
    'SAM-QA55Q60C-2023', 'Samsung', 'QA55Q60C', 55, '4K', 3499.00, 15, 2023, 'Yes', 'Tizen', 'QLED'
);

INSERT INTO televisions (
    catalog_number, brand, model, screen_size, resolution, price, stock_quantity, release_year, smart_tv, os, panel_type
) VALUES (
    'SON-KD55X80K-2023', 'Sony', 'KD55X80K', 55, '4K', 3299.00, 12, 2023, 'Yes', 'Google TV', 'LED'
);
