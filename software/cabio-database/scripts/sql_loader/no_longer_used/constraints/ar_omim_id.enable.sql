/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create unique index SYS_C0021057_idx on AR_OMIM_ID
(GENECHIP_ARRAY,OMIM_ID,PROBE_SET_ID) tablespace CABIO_MAP_FUT;
alter table AR_OMIM_ID enable constraint SYS_C0021057 using index SYS_C0021057_idx;

alter table AR_OMIM_ID enable constraint SYS_C0021057;
alter table AR_OMIM_ID enable constraint SYS_C0021057;
alter table AR_OMIM_ID enable constraint SYS_C0021057;
alter table AR_OMIM_ID enable constraint SYS_C004258;
alter table AR_OMIM_ID enable constraint SYS_C004259;
alter table AR_OMIM_ID enable constraint SYS_C004260;

alter table AR_OMIM_ID enable primary key;

--EXIT;
