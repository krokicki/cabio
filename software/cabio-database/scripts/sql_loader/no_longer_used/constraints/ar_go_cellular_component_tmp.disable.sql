/*L
   Copyright SAIC

   Distributed under the OSI-approved BSD 3-Clause License.
   See http://ncip.github.com/cabio/LICENSE.txt for details.
L*/

alter table AR_GO_CELLULAR_COMPONENT_TMP disable constraint SYS_C004243;
alter table AR_GO_CELLULAR_COMPONENT_TMP disable constraint SYS_C004244;
alter table AR_GO_CELLULAR_COMPONENT_TMP disable constraint SYS_C004245;
alter table AR_GO_CELLULAR_COMPONENT_TMP disable constraint SYS_C004246;
alter table AR_GO_CELLULAR_COMPONENT_TMP disable constraint SYS_C004247;

alter table AR_GO_CELLULAR_COMPONENT_TMP disable primary key;

--EXIT;
