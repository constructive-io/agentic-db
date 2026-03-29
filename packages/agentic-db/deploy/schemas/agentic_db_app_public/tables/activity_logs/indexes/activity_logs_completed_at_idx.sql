-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_completed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/completed_at/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX activity_logs_completed_at_idx ON agentic_db_app_public.activity_logs USING BTREE ( completed_at );

