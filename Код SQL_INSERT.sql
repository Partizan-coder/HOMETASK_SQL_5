INSERT INTO Genre_info (Genre_name) VALUES 
('Genre_name_1'),
('Genre_name_2'),
('Genre_name_3'),
('Genre_name_4'),
('Genre_name_5')
;

INSERT INTO Singer_info (Alias, Full_name) VALUES 
('Alias_1 ', 'Full_name_1 1111'),
('Alias_2', 'Full_name_2'),
('Alias_3', 'Full_name_3'),
('Alias_4',  'Full_name_4 4444'),
('Alias_5',  'Full_name_5'),
('Alias_6',  'Full_name_6'),
('Alias_7',  'Full_name_7 7777'),
('Alias_8',  'Full_name_8 8888')
('Alias_9',  'Full_name_9')
;

INSERT INTO Album_info (Album_name, Issue_date) VALUES 
('Album_name_1', CURRENT_TIMESTAMP(4)),
('Album_name_2', CURRENT_TIMESTAMP(4)),
('Album_name_3', '2018-01-01'),
('Album_name_4', CURRENT_TIMESTAMP(4)),
('Album_name_5', CURRENT_TIMESTAMP(4)),
('Album_name_6', CURRENT_TIMESTAMP(4)),
('Album_name_7', CURRENT_TIMESTAMP(4)),
(‘Album_name_8', CURRENT_TIMESTAMP(4)),
('Album_name_9', '2019-01-01'),
('Album_name_10', '2020-01-01')
;

INSERT INTO Track_info (Track_name, Track_length) VALUES 
('Track_name_1', 120),
('my Track_name_2', 120),
('Track_name_3', 120),
('Track_name_4', 250),
('Track_name_5', 120),
('Track_name_6', 120),
('Track_name_7', 120),
('Track_name_8', 190),
('Track_name_9', 150),
('Track_name_10', 120),
('Track_name_11', 120),
('my Track_name_12', 320),
('Track_name_13', 120),
('Track_name_14', 310),
('Track_name_15', 110)
;


INSERT INTO Collection_info (Collection_name, Issue_date) VALUES 
('Collection_name_1', CURRENT_TIMESTAMP(4)),
('Collection_name_2', CURRENT_TIMESTAMP(4)),
('Collection_name_3', CURRENT_TIMESTAMP(4)),
('Collection_name_4', CURRENT_TIMESTAMP(4)),
('Collection_name_5', CURRENT_TIMESTAMP(4)),
('Collection_name_6', CURRENT_TIMESTAMP(4)),
('Collection_name_7', CURRENT_TIMESTAMP(4)),
('Collection_name_8', CURRENT_TIMESTAMP(4))
;


INSERT INTO Genre_Singer (ID_genre, ID_singer) VALUES 
(1, 1),
(2, 2),
(3, 6),
(4, 7),
(1, 3),
(2, 5),
(3, 1),
(4, 4),
(4, 8)
;


INSERT INTO Album_Singer (ID_album, ID_singer) VALUES 
(6, 2),
(1, 4),
(2, 5),
(3, 8),
(4, 7),
(5, 6),
(6, 3),
(7, 2),
(8, 1),
(10, 9)
;

INSERT INTO Track_Album (ID_track, ID_album) VALUES 
(8, 1),
(15, 2),
(11, 3),
(9, 1),
(7, 6),
(12, 7),
(14, 6),
(4, 3),
(1, 2),
(13, 9),
(6, 10)
;


INSERT INTO Collection_Track (ID_collection, ID_track) VALUES 
(8, 9),
(4, 6),
(1, 1),
(3, 14),
(5, 12)
;





