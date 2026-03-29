-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_activity_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/activity_type/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX activity_logs_activity_type_idx ON agentic_db_app_public.activity_logs USING BTREE ( activity_type );

