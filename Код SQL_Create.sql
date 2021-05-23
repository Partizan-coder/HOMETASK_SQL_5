Create table if not exists Genre_info (
        ID_genre serial primary key,
        Genre_name varchar (60) not null
);
Create table if not exists Singer_info (
        ID_singer serial primary key,
        Alias varchar (60),
        Full_name varchar (100) not null
);
Create table if not exists Album_info (
        ID_album serial primary key,
        Album_name varchar (60) not null,
        Issue_date date not null
);
Create table if not exists Track_info (
        ID_track serial primary key,
        Track_name varchar (60) not null,
        Track_length numeric not null
);
Create table if not exists Collection_info (
        ID_collection serial primary key,
        Collection_name varchar (60) not null,
        Issue_date date not null
);
Create table if not exists Genre_singer (
        ID_genre integer references Genre_info (ID_genre),
        ID_singer integer references Singer_info (ID_singer),
Constraint Genre_singer_pk primary key (ID_genre, ID_singer)
);
Create table if not exists Album_singer (
        ID_album integer references Album_info (ID_album),
        ID_singer integer references Singer_info (ID_singer),
Constraint Album_singer_pk primary key (ID_album, ID_singer)
);
Create table if not exists Track_album (
        ID_track integer references Track_info (ID_track),
        ID_album integer references Album_info (ID_album),
Constraint Track_album_pk primary key (ID_track, ID_album)
);
Create table if not exists Collection_track (
        ID_collection integer references Collection_info (ID_collection),
        ID_track integer references Track_info (ID_track),
Constraint Collection_track_pk primary key (ID_collection, ID_track)
);