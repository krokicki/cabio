/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table GENE_ALIAS_OBJECT_TV disable constraint SYS_C0021100;
alter table GENE_ALIAS_OBJECT_TV disable constraint SYS_C004456;
alter table GENE_ALIAS_OBJECT_TV disable constraint SYS_C004457;
alter table GENE_ALIAS_OBJECT_TV disable constraint SYS_C004458;
alter table GENE_ALIAS_OBJECT_TV disable constraint GAOBIGID;

alter table GENE_ALIAS_OBJECT_TV disable primary key;

--EXIT;
