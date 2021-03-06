/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create unique index SYS_C0021122_idx on MARKER_MARKER_REL_LOCATION
(SORT_ORDER,MARKER_REL_LOCATION_ID,MARKER_ID) tablespace CABIO_FUT;
alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C0021122 using index SYS_C0021122_idx;

alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C0021122;
alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C0021122;
alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C0021122;
alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C004593;
alter table MARKER_MARKER_REL_LOCATION enable constraint SYS_C004594;

--EXIT;
