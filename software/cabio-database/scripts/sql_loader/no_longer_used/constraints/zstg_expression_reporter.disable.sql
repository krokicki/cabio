/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table ZSTG_EXPRESSION_REPORTER disable constraint SYS_C004897;
alter table ZSTG_EXPRESSION_REPORTER disable constraint SYS_C004898;
alter table ZSTG_EXPRESSION_REPORTER disable constraint SYS_C004899;

alter table ZSTG_EXPRESSION_REPORTER disable primary key;

--EXIT;
