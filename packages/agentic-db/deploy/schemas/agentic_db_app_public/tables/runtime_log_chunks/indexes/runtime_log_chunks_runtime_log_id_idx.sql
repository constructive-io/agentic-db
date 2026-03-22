-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/indexes/runtime_log_chunks_runtime_log_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/runtime_log_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/indexes/runtime_state_chunks_runtime_state_id_idx


CREATE INDEX runtime_log_chunks_runtime_log_id_idx ON agentic_db_app_public.runtime_log_chunks USING BTREE ( runtime_log_id );

