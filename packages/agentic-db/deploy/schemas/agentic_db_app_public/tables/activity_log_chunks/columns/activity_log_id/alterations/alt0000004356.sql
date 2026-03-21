-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/activity_log_id/alterations/alt0000004356
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/activity_log_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_session_archive_id_idx


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  ALTER COLUMN activity_log_id SET NOT NULL;

