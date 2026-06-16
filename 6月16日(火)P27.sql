CREATE TABLE Shohin (
    shohin_id     VARCHAR(10) PRIMARY KEY,
    shohin_mei    VARCHAR(50),
    hanbai_tanka  INTEGER
);

INSERT INTO Shohin (shohin_id, shohin_mei, hanbai_tanka) VALUES
('S001', 'りんご',      120),
('S002', 'みかん',       80),
('S003', 'バナナ',      150),
('S004', 'ぶどう',      300),
('S005', 'もも',        250),
('S006', 'いちご',      450),
('S007', 'パイナップル', 500),
('S008', 'メロン',      800),
('S009', 'スイカ',      700),
('S010', 'キウイ',      180);