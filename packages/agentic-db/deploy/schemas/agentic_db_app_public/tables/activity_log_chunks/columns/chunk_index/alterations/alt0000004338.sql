-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/chunk_index/alterations/alt0000004338
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/updated_at/alterations/alt0000004337


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

