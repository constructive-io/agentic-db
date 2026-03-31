-- Deploy: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/alterations/alt0000001710
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx
-- requires: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/column


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  ALTER COLUMN activity_logs_id SET NOT NULL;

