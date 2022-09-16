create database bibliotheque;

use bibliotheque;

create table Author (
    id int not null primary key auto_increment,
    first_name varchar(255),
    last_name varchar(45) not null,
    bibliography text
    ) engine = innodb;

create table Publisher(
    id int not null primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100) not null,
    email varchar(45)
    ) engine = innodb;
    
    create table Borrower( 
    cardNo varchar(16) not null primary key,
    first_name varchar(45),
    last_name varchar(45)
    ) engine = innodb;
  
  create table Library_branch(
    id int not null primary key auto_increment,
    name varchar(100) not null,
    adress varchar(255)
    ) engine = innodb;
  
  create table Book (
    id int not null primary key auto_increment,
    title varchar(255) not null,
    author_id int,
    publisher_id int
    ) engine = innodb;
    
    alter table Book 
    add constraint fk_author_id foreign key(author_id) references Author(id) on delete cascade;
    
    alter table Book 
    add constraint fk_publisher_id foreign key(publisher_id) references Publisher(id) on delete cascade;
    
  create table Book_copies( 
    id int not null primary key auto_increment, 
    book_id int, 
    library_branch_id int, 
    no_of_copies int ) engine = innodb;
    
    alter table Book_copies 
    add constraint fk_book_id foreign key(book_id) references Book(id) on delete cascade;
    
    alter table Book_copies add 
    constraint fk_librar_branch_id foreign key(library_branch_id) references Library_branch(id) on delete cascade;
    
     
  create table Book_loans ( 
    id int not null primary key auto_increment, 
    library_branch_id int, 
    borrower_cardNo varchar(16), 
    book_id int, 
    date_out datetime, 
    due_date datetime ) engine = innodb;
    
    alter table Book_loans 
    add constraint fk_library_id foreign key(library_branch_id) references Library_branch(id) on delete cascade;
    
    alter table Book_loans  
    add constraint fk_barrower_cardno foreign key(borrower_cardNo) references Borrower(cardNo) on delete cascade;
    
    alter table Book_loans  
    add constraint fk_barrower_cardno foreign key(borrower_cardNo) references Borrower(cardNo) on delete cascade;
    
    insert into Library_branch (name)
    values ('Gombe'),('Masine');
    
    INSERT INTO Publisher (first_name) VALUES ('A pas de loups');
    INSERT INTO Publisher (first_name) VALUES ('A2MIMO');
    INSERT INTO Publisher (first_name) VALUES ('ABC Melody');
    INSERT INTO Publisher (first_name) VALUES ('ACCES');
    INSERT INTO Publisher (first_name) VALUES ('Actes Sud');
    INSERT INTO Publisher (first_name) VALUES ('Actes sud junior');
    INSERT INTO Publisher (first_name) VALUES ('Aedis');
    INSERT INTO Publisher (first_name) VALUES ('Albin Michel');
    INSERT INTO Publisher (first_name) VALUES ('Albin Michel jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Aldéran édition');
    INSERT INTO Publisher (first_name) VALUES ('Alice');
    INSERT INTO Publisher (first_name) VALUES ('Alice jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Alkindi');
    INSERT INTO Publisher (first_name) VALUES ('Almaterra');
    INSERT INTO Publisher (first_name) VALUES ('Alyssa');
    INSERT INTO Publisher (first_name) VALUES ('Amaterra');
    INSERT INTO Publisher (first_name) VALUES ('AND');
    INSERT INTO Publisher (first_name) VALUES ('ANLCI');
    INSERT INTO Publisher (first_name) VALUES ('Après la lune jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Assoc fr pour la lecture');
    INSERT INTO Publisher (first_name) VALUES ('Assoc. Paris-musées');
    INSERT INTO Publisher (first_name) VALUES ('Association Afflux');
    INSERT INTO Publisher (first_name) VALUES ('Atelier du poisson soluble');
    INSERT INTO Publisher (first_name) VALUES ('Atelier du poissson soluble');
    INSERT INTO Publisher (first_name) VALUES ('Atelier du Scribe');
    INSERT INTO Publisher (first_name) VALUES ('Auto production');
    INSERT INTO Publisher (first_name) VALUES ('Autrement');
    INSERT INTO Publisher (first_name) VALUES ('Autrement jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Balivernes');
    INSERT INTO Publisher (first_name) VALUES ('Balzane');
    INSERT INTO Publisher (first_name) VALUES ('Bayard');
    INSERT INTO Publisher (first_name) VALUES ('Bayard jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Belin');
    INSERT INTO Publisher (first_name) VALUES ('Belin jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Belize');
    INSERT INTO Publisher (first_name) VALUES ('Benoît Jacques');
    INSERT INTO Publisher (first_name) VALUES ('Benoît Jacques Books');
    INSERT INTO Publisher (first_name) VALUES ('bib.municip Paris');
    INSERT INTO Publisher (first_name) VALUES ('Bibliothèque de Toulouse');
    INSERT INTO Publisher (first_name) VALUES ('Bilboquet');
    INSERT INTO Publisher (first_name) VALUES ('Biscoto');
    INSERT INTO Publisher (first_name) VALUES ('BNF');
    INSERT INTO Publisher (first_name) VALUES ('Bruno Doucey');
    INSERT INTO Publisher (first_name) VALUES ('Bulles de savon');
    INSERT INTO Publisher (first_name) VALUES ('Cadex');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n° 10');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n° 3');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n° 4');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n° 5');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n° 7');
    INSERT INTO Publisher (first_name) VALUES ('Cahiers du CRILJ n°8');
    INSERT INTO Publisher (first_name) VALUES ('Calmann-Lévy');
    INSERT INTO Publisher (first_name) VALUES ('Cambourakis');
    INSERT INTO Publisher (first_name) VALUES ('Casterman');
    INSERT INTO Publisher (first_name) VALUES ('Castor benjamin');
    INSERT INTO Publisher (first_name) VALUES ('Castor poche');
    INSERT INTO Publisher (first_name) VALUES ('Catalpas');
    INSERT INTO Publisher (first_name) VALUES ('CCMDE');
    INSERT INTO Publisher (first_name) VALUES ('Centre Georges Pompidou');
    INSERT INTO Publisher (first_name) VALUES ('Cercle de la librairie');
    INSERT INTO Publisher (first_name) VALUES ('Chan-Ok');
    INSERT INTO Publisher (first_name) VALUES ('Cherche-midi');
    INSERT INTO Publisher (first_name) VALUES ('Cheyne');
    INSERT INTO Publisher (first_name) VALUES ('Cipango');
    INSERT INTO Publisher (first_name) VALUES ('Circé');
    INSERT INTO Publisher (first_name) VALUES ('Circonflexe');
    INSERT INTO Publisher (first_name) VALUES ('CLAP Midi-Pyrénées');
    INSERT INTO Publisher (first_name) VALUES ('Compagnie créative');
    INSERT INTO Publisher (first_name) VALUES ('Cornélius');
    INSERT INTO Publisher (first_name) VALUES ('Corps puce');
    INSERT INTO Publisher (first_name) VALUES ('Courtes et longues');
    INSERT INTO Publisher (first_name) VALUES ('Dapper');
    INSERT INTO Publisher (first_name) VALUES ('De facto');
    INSERT INTO Publisher (first_name) VALUES ('De la Martinière');
    INSERT INTO Publisher (first_name) VALUES ('De la Martinière jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Des Eléphants');
    INSERT INTO Publisher (first_name) VALUES ('Des Idées et des Hommes');
    INSERT INTO Publisher (first_name) VALUES ('Didier');
    INSERT INTO Publisher (first_name) VALUES ('Didier jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Dominique et cie');
    INSERT INTO Publisher (first_name) VALUES ('Donner à voir');
    INSERT INTO Publisher (first_name) VALUES ('Duculot Casterman');
    INSERT INTO Publisher (first_name) VALUES ('Ecole Centre Montauban');
    INSERT INTO Publisher (first_name) VALUES ('Ecole des loisirs');
    INSERT INTO Publisher (first_name) VALUES ('Ed Corps Puce');
    INSERT INTO Publisher (first_name) VALUES ('Ed Quart monde');
    INSERT INTO Publisher (first_name) VALUES ('Ed. des Elephants');
    INSERT INTO Publisher (first_name) VALUES ('Ed. des Elephants/Amnesty');
    INSERT INTO Publisher (first_name) VALUES ('Ed. du Jasmin');
    INSERT INTO Publisher (first_name) VALUES ('Edition des Monts');
    INSERT INTO Publisher (first_name) VALUES ('Editions de la Balle');
    INSERT INTO Publisher (first_name) VALUES ('Editions du Jasmin');
    INSERT INTO Publisher (first_name) VALUES ('Education Nationale');
    INSERT INTO Publisher (first_name) VALUES ('Elan vert');
    INSERT INTO Publisher (first_name) VALUES ('Encore une fois');
    INSERT INTO Publisher (first_name) VALUES ('ERES');
    INSERT INTO Publisher (first_name) VALUES ('Escabelle');
    INSERT INTO Publisher (first_name) VALUES ('Esperluète');
    INSERT INTO Publisher (first_name) VALUES ('Etre');
    INSERT INTO Publisher (first_name) VALUES ('Eyrolles');
    INSERT INTO Publisher (first_name) VALUES ('Flammarion');
    INSERT INTO Publisher (first_name) VALUES ('Flammarion jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('FLBLB');
    INSERT INTO Publisher (first_name) VALUES ('Fleurus');
    INSERT INTO Publisher (first_name) VALUES ('Flies France');
    INSERT INTO Publisher (first_name) VALUES ('FOL de l\'Ardèche');
    INSERT INTO Publisher (first_name) VALUES ('Folio junior');
    INSERT INTO Publisher (first_name) VALUES ('Folle avoine');
    INSERT INTO Publisher (first_name) VALUES ('Fond. BNP');
    INSERT INTO Publisher (first_name) VALUES ('France Loisirs');
    INSERT INTO Publisher (first_name) VALUES ('Frimousse');
    INSERT INTO Publisher (first_name) VALUES ('GAEL');
    INSERT INTO Publisher (first_name) VALUES ('Galeri Minyatür');
    INSERT INTO Publisher (first_name) VALUES ('Gallimard');
    INSERT INTO Publisher (first_name) VALUES ('Gallimard jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Gautier-Languereau');
    INSERT INTO Publisher (first_name) VALUES ('Grandir');
    INSERT INTO Publisher (first_name) VALUES ('Grasset');
    INSERT INTO Publisher (first_name) VALUES ('Grasset jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Gros textes');
    INSERT INTO Publisher (first_name) VALUES ('Gründ');
    INSERT INTO Publisher (first_name) VALUES ('Gulf Stream');
    INSERT INTO Publisher (first_name) VALUES ('Hachette');
    INSERT INTO Publisher (first_name) VALUES ('Hachette jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Hatier');
    INSERT INTO Publisher (first_name) VALUES ('Hatier jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Hatier poche');
    INSERT INTO Publisher (first_name) VALUES ('Helium');
    INSERT INTO Publisher (first_name) VALUES ('Hélium');
    INSERT INTO Publisher (first_name) VALUES ('Hoëbeke');
    INSERT INTO Publisher (first_name) VALUES ('Hong Fei');
    INSERT INTO Publisher (first_name) VALUES ('Hongfei');
    INSERT INTO Publisher (first_name) VALUES ('Il était deux fois');
    INSERT INTO Publisher (first_name) VALUES ('Jean-Pierre Delarge');
    INSERT INTO Publisher (first_name) VALUES ('Kalandraka');
    INSERT INTO Publisher (first_name) VALUES ('Kate\'art');
    INSERT INTO Publisher (first_name) VALUES ('Kid Pocket');
    INSERT INTO Publisher (first_name) VALUES ('Kilowatt');
    INSERT INTO Publisher (first_name) VALUES ('Kimane');
    INSERT INTO Publisher (first_name) VALUES ('Krom Sakamapheap');
    INSERT INTO Publisher (first_name) VALUES ('L\'agrume');
    INSERT INTO Publisher (first_name) VALUES ('L\'art à la page');
    INSERT INTO Publisher (first_name) VALUES ('L\'Edune');
    INSERT INTO Publisher (first_name) VALUES ('L\'élan vert');
    INSERT INTO Publisher (first_name) VALUES ('L\'Harmattan');
    INSERT INTO Publisher (first_name) VALUES ('L\'Hydre');
    INSERT INTO Publisher (first_name) VALUES ('L\'idée bleue');
    INSERT INTO Publisher (first_name) VALUES ('L\'iroli');
    INSERT INTO Publisher (first_name) VALUES ('La Bagnole');
    INSERT INTO Publisher (first_name) VALUES ('La cabane sur le chien');
    INSERT INTO Publisher (first_name) VALUES ('La compagnie Créative');
    INSERT INTO Publisher (first_name) VALUES ('La Découverte poche');
    INSERT INTO Publisher (first_name) VALUES ('La joie de lire');
    INSERT INTO Publisher (first_name) VALUES ('La joie par les livres');
    INSERT INTO Publisher (first_name) VALUES ('La maison est en carton');
    INSERT INTO Publisher (first_name) VALUES ('La Martinière');
    INSERT INTO Publisher (first_name) VALUES ('La Palissade');
    INSERT INTO Publisher (first_name) VALUES ('La Pastèque');
    INSERT INTO Publisher (first_name) VALUES ('La Renarde rouge');
    INSERT INTO Publisher (first_name) VALUES ('La ville brûle');
    INSERT INTO Publisher (first_name) VALUES ('Larousse');
    INSERT INTO Publisher (first_name) VALUES ('Le baron perché');
    INSERT INTO Publisher (first_name) VALUES ('Le cherche midi');
    INSERT INTO Publisher (first_name) VALUES ('Le Dé bleu');
    INSERT INTO Publisher (first_name) VALUES ('Le Farfadet bleu');
    INSERT INTO Publisher (first_name) VALUES ('Le Genevrier');
    INSERT INTO Publisher (first_name) VALUES ('Le Griffon bleu');
    INSERT INTO Publisher (first_name) VALUES ('Le Jasmin');
    INSERT INTO Publisher (first_name) VALUES ('Le Pommier');
    INSERT INTO Publisher (first_name) VALUES ('Le port a jauni');
    INSERT INTO Publisher (first_name) VALUES ('Le Rocher');
    INSERT INTO Publisher (first_name) VALUES ('Le Sablier éditeur');
    INSERT INTO Publisher (first_name) VALUES ('Le Sorbier');
    INSERT INTO Publisher (first_name) VALUES ('Le Sorbier/Amnesty');
    INSERT INTO Publisher (first_name) VALUES ('Le Trou de nez');
    INSERT INTO Publisher (first_name) VALUES ('Le vengeur masqué');
    INSERT INTO Publisher (first_name) VALUES ('Les 400 coups');
    INSERT INTO Publisher (first_name) VALUES ('Les Arènes');
    INSERT INTO Publisher (first_name) VALUES ('Les Cahiers de la Charte');
    INSERT INTO Publisher (first_name) VALUES ('les éditions du mouton cerise');
    INSERT INTO Publisher (first_name) VALUES ('Les fourmis rouges');
    INSERT INTO Publisher (first_name) VALUES ('Les Grandes Personnes');
    INSERT INTO Publisher (first_name) VALUES ('Les Grands Personnes');
    INSERT INTO Publisher (first_name) VALUES ('Les p\'tits bérets');
    INSERT INTO Publisher (first_name) VALUES ('Les papareils');
    INSERT INTO Publisher (first_name) VALUES ('Lirabelle');
    INSERT INTO Publisher (first_name) VALUES ('Lirabelle/Amnesty');
    INSERT INTO Publisher (first_name) VALUES ('Lis avec moi');
    INSERT INTO Publisher (first_name) VALUES ('Lito');
    INSERT INTO Publisher (first_name) VALUES ('Little Urban');
    INSERT INTO Publisher (first_name) VALUES ('Lo Païs d\'Enfance');
    INSERT INTO Publisher (first_name) VALUES ('Magnard');
    INSERT INTO Publisher (first_name) VALUES ('Magnard jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Mango');
    INSERT INTO Publisher (first_name) VALUES ('Mango jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Margot');
    INSERT INTO Publisher (first_name) VALUES ('Marsam');
    INSERT INTO Publisher (first_name) VALUES ('MeMo');
    INSERT INTO Publisher (first_name) VALUES ('Mic-Mac');
    INSERT INTO Publisher (first_name) VALUES ('Michalon');
    INSERT INTO Publisher (first_name) VALUES ('Michel Lafon');
    INSERT INTO Publisher (first_name) VALUES ('Mijade');
    INSERT INTO Publisher (first_name) VALUES ('Mila');
    INSERT INTO Publisher (first_name) VALUES ('Mila éditions');
    INSERT INTO Publisher (first_name) VALUES ('Milan');
    INSERT INTO Publisher (first_name) VALUES ('Milan éducation');
    INSERT INTO Publisher (first_name) VALUES ('Milan jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Milan poche');
    INSERT INTO Publisher (first_name) VALUES ('Millefeuilles');
    INSERT INTO Publisher (first_name) VALUES ('Minedition');
    INSERT INTO Publisher (first_name) VALUES ('Mini Syros');
    INSERT INTO Publisher (first_name) VALUES ('Montreuil');
    INSERT INTO Publisher (first_name) VALUES ('MØtus');
    INSERT INTO Publisher (first_name) VALUES ('Mouton cerise');
    INSERT INTO Publisher (first_name) VALUES ('Naïve');
    INSERT INTO Publisher (first_name) VALUES ('Nathan');
    INSERT INTO Publisher (first_name) VALUES ('Nathan jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Nord-Sud');
    INSERT INTO Publisher (first_name) VALUES ('Notari');
    INSERT INTO Publisher (first_name) VALUES ('Nuinui');
    INSERT INTO Publisher (first_name) VALUES ('OQO éditions');
    INSERT INTO Publisher (first_name) VALUES ('Oskar');
    INSERT INTO Publisher (first_name) VALUES ('Oskar jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Où sont les enfants ?');
    INSERT INTO Publisher (first_name) VALUES ('P\'tit cairn');
    INSERT INTO Publisher (first_name) VALUES ('P\'tit Glénat');
    INSERT INTO Publisher (first_name) VALUES ('Palette');
    INSERT INTO Publisher (first_name) VALUES ('Paquet éditions');
    INSERT INTO Publisher (first_name) VALUES ('Paris Bibliothèques');
    INSERT INTO Publisher (first_name) VALUES ('Paris Musées');
    INSERT INTO Publisher (first_name) VALUES ('Pastel');
    INSERT INTO Publisher (first_name) VALUES ('PEMF');
    INSERT INTO Publisher (first_name) VALUES ('PEMF ados');
    INSERT INTO Publisher (first_name) VALUES ('Penguin books');
    INSERT INTO Publisher (first_name) VALUES ('Père Fouettard');
    INSERT INTO Publisher (first_name) VALUES ('Petit à petit');
    INSERT INTO Publisher (first_name) VALUES ('Picquier jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Pluie d\'étoiles');
    INSERT INTO Publisher (first_name) VALUES ('Pluie d’étoiles');
    INSERT INTO Publisher (first_name) VALUES ('Plume d\'Ocris');
    INSERT INTO Publisher (first_name) VALUES ('Plume de carotte');
    INSERT INTO Publisher (first_name) VALUES ('Poche');
    INSERT INTO Publisher (first_name) VALUES ('Pocket');
    INSERT INTO Publisher (first_name) VALUES ('Pocket jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Pocket junior');
    INSERT INTO Publisher (first_name) VALUES ('Pockett junior');
    INSERT INTO Publisher (first_name) VALUES ('Point de suspension');
    INSERT INTO Publisher (first_name) VALUES ('Points de Suspension');
    INSERT INTO Publisher (first_name) VALUES ('Poisson soluble');
    INSERT INTO Publisher (first_name) VALUES ('Pourquoi pas');
    INSERT INTO Publisher (first_name) VALUES ('Présence production');
    INSERT INTO Publisher (first_name) VALUES ('Privat');
    INSERT INTO Publisher (first_name) VALUES ('Publisud');
    INSERT INTO Publisher (first_name) VALUES ('Quart monde');
    INSERT INTO Publisher (first_name) VALUES ('Quatre fleuves');
    INSERT INTO Publisher (first_name) VALUES ('Québec');
    INSERT INTO Publisher (first_name) VALUES ('Rageot');
    INSERT INTO Publisher (first_name) VALUES ('Réciproques');
    INSERT INTO Publisher (first_name) VALUES ('Réunion des musées nationaux');
    INSERT INTO Publisher (first_name) VALUES ('Réunion musées nationaux');
    INSERT INTO Publisher (first_name) VALUES ('Rêves bleus');
    INSERT INTO Publisher (first_name) VALUES ('Ricochet');
    INSERT INTO Publisher (first_name) VALUES ('Rivages');
    INSERT INTO Publisher (first_name) VALUES ('Robert Laffont');
    INSERT INTO Publisher (first_name) VALUES ('Rocher');
    INSERT INTO Publisher (first_name) VALUES ('Rouegue');
    INSERT INTO Publisher (first_name) VALUES ('Rouergue');
    INSERT INTO Publisher (first_name) VALUES ('Rouge safran');
    INSERT INTO Publisher (first_name) VALUES ('Rue du monde');
    INSERT INTO Publisher (first_name) VALUES ('Ruisseaux d\'Afrique');
    INSERT INTO Publisher (first_name) VALUES ('Saltimbanque');
    INSERT INTO Publisher (first_name) VALUES ('Sarbacane');
    INSERT INTO Publisher (first_name) VALUES ('Sarbacane/Amnesty');
    INSERT INTO Publisher (first_name) VALUES ('SEDRAP');
    INSERT INTO Publisher (first_name) VALUES ('SEDRAP jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Seghers');
    INSERT INTO Publisher (first_name) VALUES ('Seghers jeune bilingue');
    INSERT INTO Publisher (first_name) VALUES ('Seuil');
    INSERT INTO Publisher (first_name) VALUES ('Seuil jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Soc et foc');
    INSERT INTO Publisher (first_name) VALUES ('Sorbier');
    INSERT INTO Publisher (first_name) VALUES ('Souchon-Garrigue Hélène');
    INSERT INTO Publisher (first_name) VALUES ('Stock');
    INSERT INTO Publisher (first_name) VALUES ('Syros');
    INSERT INTO Publisher (first_name) VALUES ('Syros Jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Syros/Amnesty');
    INSERT INTO Publisher (first_name) VALUES ('Table ronde');
    INSERT INTO Publisher (first_name) VALUES ('Talents hauts');
    INSERT INTO Publisher (first_name) VALUES ('Tapori');
    INSERT INTO Publisher (first_name) VALUES ('Thierry Magnier');
    INSERT INTO Publisher (first_name) VALUES ('Tourbillon');
    INSERT INTO Publisher (first_name) VALUES ('Touret');
    INSERT INTO Publisher (first_name) VALUES ('Usborne');
    INSERT INTO Publisher (first_name) VALUES ('Vents d\'ailleurs');
    INSERT INTO Publisher (first_name) VALUES ('Verdier');
    INSERT INTO Publisher (first_name) VALUES ('Versant Sud');
    INSERT INTO Publisher (first_name) VALUES ('Vigot');
    INSERT INTO Publisher (first_name) VALUES ('Vilo jeunesse');
    INSERT INTO Publisher (first_name) VALUES ('Vives voix');
    INSERT INTO Publisher (first_name) VALUES ('Walker Book');
    INSERT INTO Publisher (first_name) VALUES ('Yanbow al Kitab');
    INSERT INTO Publisher (first_name) VALUES ('Yomad');
    INSERT INTO Publisher (first_name) VALUES ('Zone J.');
    INSERT INTO Publisher (first_name) VALUES ('Zorba');
    
    load data local infile '/home/trigo/Téléchargements/Auteurs.csv'
    into table Author fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 rows (first_name, last_name);
    
    load data local infile '/home/trigo/Téléchargements/Livres.csv'  
    into table Book fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 rows (title,author_id,publisher_id);
    
    load data local infile '/home/trigo/Téléchargements/Fichiers bibliotheque/Borrower2.csv'  
    into table Borrower fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 rows (cardNo,first_name,last_name);
    
    load data local infile '/home/trigo/Téléchargements/book_copie.csv'  
    into table Book_copies fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 rows (library_branch_id,book_id,no_of_copies);
    
    load data local infile '/home/trigo/Téléchargements/Book_loans.csv' into
    table Book_loans fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 rows (library_branch_id,borrower_cardNo,book_id);



    
    




     


    
    



  
    
    

    

