/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table GENE_FUNCTION_ASSOCIATION disable constraint SYS_C0021101;
alter table GENE_FUNCTION_ASSOCIATION disable constraint SYS_C004462;
alter table GENE_FUNCTION_ASSOCIATION disable constraint SYS_C004464;
alter table GENE_FUNCTION_ASSOCIATION disable constraint SYS_C004465;
alter table GENE_FUNCTION_ASSOCIATION disable constraint SYS_C004466;

alter table GENE_FUNCTION_ASSOCIATION disable primary key;

--EXIT;
