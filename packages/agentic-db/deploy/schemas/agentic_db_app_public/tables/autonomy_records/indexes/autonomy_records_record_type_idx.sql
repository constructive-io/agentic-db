-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_record_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/record_type/column


CREATE INDEX autonomy_records_record_type_idx ON agentic_db_app_public.autonomy_records USING BTREE ( record_type );

