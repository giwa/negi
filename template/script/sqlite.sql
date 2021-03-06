CREATE TABLE "save_stream" (
"id" INTEGER PRIMARY KEY AUTOINCREMENT,
"timestamp" TEXT,
"src_ip" TEXT,
"dst_ip" TEXT,
"src_port" INTEGER,
"dst_port" INTEGER,
"protocol" INTEGER,
"direction" INTEGER,
"truncate" INTEGER,
"regexp_id" TEXT,
"stream" BLOB,
"st_size" INTEGER,
"st_size_org" INTEGER,
"l5prot" INTEGER,
"match_str" BLOB,
"http_size" TEXT,
"http_header_size" TEXT,
"http_chunked" TEXT,
"http_compress" TEXT,
"error" TEXT,
"stream_org" BLOB,
"srim_version" TEXT,
"hit_count" INTEGER,
"after_ipfilter" INTEGER DEFAULT -1,
"after_prefilter" INTEGER DEFAULT -1,
"l7_error" INTEGER,
"l7prot" INTEGER,
"prefilter_log" TEXT
);

CREATE TABLE "save_result" (
"id" INTEGER PRIMARY KEY AUTOINCREMENT,
"src_ip" TEXT,
"src_port" INTEGER,
"stream_id" INTEGER,
"rule_id" INTEGER,
"pattern" TEXT,
"pattern_len" INTEGER,
"dst_ip" TEXT,
"place" INTEGER,
"timestamp" TEXT,
"result" TEXT,
"dst_port" INTEGER,
"src_mac_addr" TEXT,
"dst_mac_addr" TEXT
);
