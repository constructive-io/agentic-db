-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/indexes/runtime_logs_chunks_runtime_logs_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/runtime_logs_id/column


CREATE INDEX runtime_logs_chunks_runtime_logs_id_idx ON agentic_db_app_public.runtime_logs_chunks USING BTREE ( runtime_logs_id );

