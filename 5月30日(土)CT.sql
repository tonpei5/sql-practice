CREATE TABLE SomeTable (
    p_key CHAR(1) PRIMARY KEY,
    col_1 INT,
    col_2 CHAR(1)
);

INSERT INTO SomeTable (p_key, col_1, col_2) VALUES
('a', 1, 'あ'),
('b', 2, 'い'),
('c', 3, 'う'),
('d', 4, 'え'),
('e', 5, 'お');