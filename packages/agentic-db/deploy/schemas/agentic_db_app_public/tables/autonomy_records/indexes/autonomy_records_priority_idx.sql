-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_priority_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/priority/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_status_idx


CREATE INDEX autonomy_records_priority_idx ON "agentic_db_app_public".autonomy_records USING BTREE ( priority );

