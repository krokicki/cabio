/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table ZSTG_OMIM2GENE disable constraint SYS_C005057;
alter table ZSTG_OMIM2GENE disable constraint SYS_C005055;
alter table ZSTG_OMIM2GENE disable constraint SYS_C005056;

alter table ZSTG_OMIM2GENE disable primary key;

--EXIT;
