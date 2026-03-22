-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/chunk_index/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/updated_at/alterations/alt0000006070


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  ADD COLUMN chunk_index int;

