
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at

--    http://www.apache.org/licenses/LICENSE-2.0

-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

DROP TABLE IF EXISTS ${VAR:ODM_DBNAME}.${VAR:ODM_TABLENAME};
CREATE EXTERNAL TABLE IF NOT EXISTS ${VAR:ODM_DBNAME}.${VAR:ODM_TABLENAME} (
-- Common
event_time bigint,
begin_time bigint,
end_time bigint,
event_insert_time bigint,
last_update_time bigint,
duration float,
event_id string,
name string,
org string,
type string,
n_proto string,
a_proto string,
msg string,
mac string,
severity string,
raw string,
risk float,
code string,
category string,
query string,
service string,
state string,
in_bytes bigint,
out_bytes bigint,
xref string,
version string,
api string,
parameter string,
action string,
proc string,
app string,
disposition string,
prevalence string,
confidence string,
sensitivity string,
count int,
company string,
additional_attrs map<string,string>,
to_trust string,
from_trust string,
rule string,
threat string,
pcap_id int,
session_id string,
length int,
-- Device
dvc_time bigint,
dvc_ip4 bigint,
dvc_ip4_str string,
dvc_ip6 string,
dvc_ip6_str string,
dvc_host string,
dvc_mac string,
dvc_domain string,
dvc_type string,
dvc_vendor string,
dvc_fwd_ip4 bigint,
dvc_fwd_ip4_str string,
dvc_fwd_ip6 string,
dvc_fwd_ip6_str string,
dvc_version string,
-- Network
src_ip4 bigint,
src_ip4_str string,
src_ip6 string,
src_ip6_str string,
src_host string,
src_mac string,
src_domain string,
src_port int,
src_country_code string,
src_country_name string,
src_region string,
src_city string,
src_lat int,
src_long int,
src_asn int,
src_tos string,
dst_ip4 bigint,
dst_ip4_str string,
dst_ip6 string,
dst_ip6_str string,
dst_host string,
dst_mac string,
dst_domain string,
dst_port int,
dst_country_code string,
dst_country_name string,
dst_region string,
dst_city string,
dst_lat int,
dst_long int,
dst_asn int,
dst_tos string,
net_direction string,
net_flags string,
-- File
file_name string,
file_path string,
file_atime bigint,
file_acls string,
file_type string,
file_size int,
file_desc string,
file_hash string,
file_hash_type string,
file_uid string,
-- Endpoint
end_object string,
end_action string,
end_msg string,
end_app string,
end_location string,
end_proc string,
-- User
user_name string,
src_user_name string,
dst_user_name string,
user_email string,
user_id string,
user_loc string,
user_desc string,
-- DNS
dns_class string,
dns_len int,
dns_query string,
dns_response_code string,
dns_answers string,
dns_type int,
-- Proxy
prx_category string,
prx_browser string,
prx_code string,
prx_referrer string,
prx_host string,
prx_filter_rule string,
prx_filter_result string,
prx_query string,
prx_action string,
prx_method string,
prx_type string,
-- HTTP
http_request_method string,
http_request_uri string,
http_request_body_len int,
http_request_user_name string,
http_request_password string,
http_request_proxied string,
http_request_headers map<string,string>,
http_response_status_code int,
http_response_status_msg string,
http_response_body_len int,
http_response_info_code int,
http_response_info_msg string,
http_response_resp_fuids array<string>,
http_response_mime_types string,
http_response_headers map<string,string>,
-- SMTP
smtp_trans_depth int,
smtp_headers_helo string,
smtp_headers_mailfrom string,
smtp_headers_rcptto string,
smtp_headers_date string,
smtp_headers_from string,
smtp_headers_to string,
smtp_headers_reply_to string,
smtp_headers_msg_id string,
smtp_headers_in_reply_to string,
smtp_headers_subject string,
smtp_headers_x_originating_ip4 bigint,
smtp_headers_x_originating_ip4_str string,
smtp_headers_first_received string,
smtp_headers_second_received string,
smtp_last_reply string,
smtp_path string,
smtp_user_agent string,
smtp_tls boolean,
smtp_is_webmail boolean,
-- FTP
ftp_user_name string,
ftp_password string,
ftp_command string,
ftp_arg string,
ftp_mime_type string,
ftp_file_size int,
ftp_reply_code int,
ftp_reply_msg string,
ftp_data_channel_passive boolean,
ftp_data_channel_rsp_p string,
ftp_cwd string,
ftp_cmdarg_ts float,
ftp_cmdarg_cmd string,
ftp_cmdarg_arg string,
ftp_cmdarg_seq int,
ftp_pending_commands string,
ftp_is_passive boolean,
ftp_fuid string,
ftp_last_auth_requested string,
-- SNMP
snmp_version string,
snmp_community string,
snmp_get_requests int,
snmp_get_bulk_requests int,
snmp_get_responses int,
snmp_set_requests int,
snmp_display_string string,
snmp_up_since float,
-- TLS
tls_version string,
tls_cipher string,
tls_curve string,
tls_server_name string,
tls_resumed boolean,
tls_next_protocol string,
tls_established boolean,
tls_cert_chain_fuids array<string>,
tls_client_cert_chain_fuids array<string>,
tls_subject string,
tls_issuer string,
-- SSH
ssh_version string,
ssh_auth_success boolean,
ssh_client string,
ssh_server string,
ssh_cipher_algorithm string,
ssh_mac_algorithm string,
ssh_compression_algorithm string,
ssh_key_exchange_algorithm string,
ssh_host_key_algorithm string,
-- DHCP
dhcp_assigned_ip4 bigint,
dhcp_assigned_ip4_str string,
dhcp_mac string,
dhcp_lease_time double,
-- IRC
irc_user string,
irc_nickname string,
irc_command string,
irc_value string,
irc_additional_data string,
-- Flow
flow_in_packets bigint,
flow_out_packets bigint,
flow_conn_state string,
flow_history string,
flow_src_dscp string,
flow_dst_dscp string,
flow_input string,
flow_output string,
flow_fwd_status string,
flow_snmp_in string,
flow_snmp_out string,
-- Vulnerability
vuln_id string,
vuln_type string,
vuln_status string,
vuln_severity string,
-- Antivirus
av_riskname string,
av_actualaction string,
av_requestedaction string,
av_secondaryaction string,
av_downloadsite string,
av_downloadedby string,
av_tracking_status string,
av_firstseen bigint,
application_hash string,
application_hash_type string,
application_name string,
application_version string,
application_type string,
av_categoryset string,
av_categorytype string,
av_threat_count int,
av_infected_count int,
av_omitted_count int,
av_scanid int,
av_startmessage string,
av_stopmessage string,
av_totalfiles int,
av_signatureid string,
av_signaturestring string,
av_signaturesubid string,
av_intrusionurl string,
av_intrusionpayloadurl string,
objectname string,
-- Agent
agent_severity string,
agent_mac string,
agent_time bigint,
agent_id string,
agent_description string,
agent_type string,
agent_ip4 bigint,
agent_ip4_str string,
agent_ip6 string,
agent_ip6_str string,
agent_host string)
PARTITIONED BY (
`p_dvc_vendor` string, -- i.e. Windows, PAN, Fireeye
`p_dvc_type` string, -- i.e. Unix, Sonicwall, Windows
`p_dt` string -- i.e. 2017-01-01
)
STORED AS AVRO
LOCATION '${VAR:ODM_LOCATION}'
TBLPROPERTIES ('avro.schema.url'='${VAR:ODM_AVRO_URL}');
