/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table GENERIC_ARRAY disable constraint SYS_C0021098;
alter table GENERIC_ARRAY disable constraint SYS_C004443;
alter table GENERIC_ARRAY disable constraint SYS_C004444;
alter table GENERIC_ARRAY disable constraint SYS_C004445;
alter table GENERIC_ARRAY disable constraint SYS_C004446;
alter table GENERIC_ARRAY disable constraint GABIGID;
alter table GENERIC_ARRAY disable constraint GENERICARRNODUPS;

alter table GENERIC_ARRAY disable primary key;

--EXIT;
