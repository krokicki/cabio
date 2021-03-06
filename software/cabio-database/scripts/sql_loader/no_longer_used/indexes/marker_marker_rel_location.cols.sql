/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

create index MARKER_MTION_SORT_ORDER on MARKER_MARKER_REL_LOCATION(SORT_ORDER) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MARKER_MTION_MARKER_REL on MARKER_MARKER_REL_LOCATION(MARKER_REL_LOCATION_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;
create index MARKER_MTION_MARKER_ID on MARKER_MARKER_REL_LOCATION(MARKER_ID) PARALLEL NOLOGGING tablespace CABIO_FUT;

--EXIT;
