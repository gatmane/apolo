
CREATE table GAT_ETUDIANT
(
num_etudiant integer primary key,
nom_etudiant character varying(60),
prenom_etudiant character varying (60)
);

CREATE table GAT_MATIERE
(
code_matiere integer primary key,
libelle_matiere character varying(60),
coeff_matiere integer
);

CREATE table GAT_EPREUVE
(
num_etudiant integer references GAT_ETUDIANT(num_etudiant),
code_matiere integer references GAT_MATIERE(code_matiere),
date_exam date,
note decimal(5,2),
constraint  PK_etud_mat_gat primary key (num_etudiant,code_matiere)
);

CREATE table GAT_ELEVE ( 
num_eleve character varying(5) primary key, 
nom_eleve character varying(60),
prenom_eleve character varying(60)
);


/* TABLE ETUDIANT */
insert into GAT_ETUDIANT (num_etudiant,nom_etudiant,prenom_etudiant) values (1000,'claude','Bernard');
insert into GAT_ETUDIANT (num_etudiant,nom_etudiant,prenom_etudiant) values (1001,'curie','marie');
insert into GAT_ETUDIANT(num_etudiant,nom_etudiant,prenom_etudiant) values (1002,'hugo','victor');
insert into GAT_ETUDIANT(num_etudiant,nom_etudiant,prenom_etudiant) values (1003,'piaf','edith');
insert into GAT_ETUDIANT (num_etudiant,nom_etudiant,prenom_etudiant) values (1004,'albert','einstein');


/* TABLE MATIERE */
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (10,'GPI',2);
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (11,'BI',3);
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (12,'BDD',2);
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (13,'SQL',2);
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (14,'TEST',3);
insert into GAT_MATIERE (code_matiere,libelle_matiere,Coeff_matiere) values (15,'JAVA',3);


/* TABLE EPREUVE */
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1000 ,10 ,'22/01/2016' ,16);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1000 ,11 ,'03/02/2016' ,14);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1000 ,12 ,'17/03/2016' ,15);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1001 ,10 ,'22/01/2016' ,14);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1001 ,11 ,'03/02/2016' ,13);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1001 ,12 ,'17/03/2016' ,12);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1002 ,10 ,'22/01/2016' ,18);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1002 ,11 ,'03/02/2016' ,13);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1002 ,12 ,'17/03/2016' ,11);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1003 ,10 ,'22/01/2016' ,18);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1003 ,11 ,'03/02/2016' ,14);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1003 ,12 ,'17/03/2016' ,15);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1004 ,10 ,'22/01/2016' ,11);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1004 ,11 ,'03/02/2016' ,18);
insert into GAT_EPREUVE ( num_etudiant ,code_matiere ,Date_exam ,note) values (1004 ,12 ,'17/03/2016' ,13);

insert 


