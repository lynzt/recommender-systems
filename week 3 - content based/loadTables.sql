-- load documents
insert into documents(name) values ('doc1');
insert into documents(name) values ('doc2');
insert into documents(name) values ('doc3');
insert into documents(name) values ('doc4');
insert into documents(name) values ('doc5');
insert into documents(name) values ('doc6');
insert into documents(name) values ('doc7');
insert into documents(name) values ('doc8');
insert into documents(name) values ('doc9');
insert into documents(name) values ('doc10');
insert into documents(name) values ('doc11');
insert into documents(name) values ('doc12');
insert into documents(name) values ('doc13');
insert into documents(name) values ('doc14');
insert into documents(name) values ('doc15');
insert into documents(name) values ('doc16');
insert into documents(name) values ('doc17');
insert into documents(name) values ('doc18');
insert into documents(name) values ('doc19');
insert into documents(name) values ('doc20');


-- load tags
insert into tags (name) values ('baseball');
insert into tags (name) values ('economics');
insert into tags (name) values ('politics');
insert into tags (name) values ('Europe');
insert into tags (name) values ('Asia');
insert into tags (name) values ('soccer');
insert into tags (name) values ('war');
insert into tags (name) values ('security');
insert into tags (name) values ('shopping');
insert into tags (name) values ('family');



-- load users
insert into users (name) values ('user1');
insert into users (name) values ('user2');


-- load document_tags
insert into document_tags (document_id, tag_id) values (1, 1);
insert into document_tags (document_id, tag_id) values (1, 3);
insert into document_tags (document_id, tag_id) values (1, 5);
insert into document_tags (document_id, tag_id) values (1, 6);
insert into document_tags (document_id, tag_id) values (1, 10);



-- load document_tags
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc1'), (select id from documents where name ilike 'baseball'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc1'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc1'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc1'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc1'), (select id from documents where name ilike 'family'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc2'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc2'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc2'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc2'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc3'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc3'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc3'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc4'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc4'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc4'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc4'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc5'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc5'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc5'), (select id from documents where name ilike 'family'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc6'), (select id from documents where name ilike 'baseball'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc6'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc7'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc7'), (select id from documents where name ilike 'family'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc8'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc8'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc8'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc8'), (select id from documents where name ilike 'family'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc9'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc9'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc10'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc10'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc10'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc11'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc11'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc11'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc12'), (select id from documents where name ilike 'baseball'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc12'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc12'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc13'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc13'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc13'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc13'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc14'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc14'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc14'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc14'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc15'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc15'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc15'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc15'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc16'), (select id from documents where name ilike 'baseball'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc16'), (select id from documents where name ilike 'soccer'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc16'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc17'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc17'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc17'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc17'), (select id from documents where name ilike 'security'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc18'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc18'), (select id from documents where name ilike 'shopping'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc19'), (select id from documents where name ilike 'economics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc19'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc19'), (select id from documents where name ilike 'Asia'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc19'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc19'), (select id from documents where name ilike 'family'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc20'), (select id from documents where name ilike 'politics'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc20'), (select id from documents where name ilike 'Europe'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc20'), (select id from documents where name ilike 'war'));
insert into document_tags (document_id, tag_id) VALUES ( (select id from documents where name ilike 'doc20'), (select id from documents where name ilike 'shopping'));


-- load user_interactions
insert into user_interactions (user_id, document_id, interaction) values (1, 1, 1);
insert into user_interactions (user_id, document_id, interaction) values (2, 1, -1);

insert into user_interactions (user_id, document_id, interaction) values (1, 2, -1);
insert into user_interactions (user_id, document_id, interaction) values (2, 2, 1);

insert into user_interactions (user_id, document_id, interaction) values (2, 4, 1);

insert into user_interactions (user_id, document_id, interaction) values (1, 6, 1);

insert into user_interactions (user_id, document_id, interaction) values (2, 12, -1);

insert into user_interactions (user_id, document_id, interaction) values (1, 16, 1);
insert into user_interactions (user_id, document_id, interaction) values (2, 17, 1);

insert into user_interactions (user_id, document_id, interaction) values (1, 19, -1);








