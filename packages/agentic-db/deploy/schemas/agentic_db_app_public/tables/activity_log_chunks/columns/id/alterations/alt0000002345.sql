-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/id/alterations/alt0000002345
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN id SET NOT NULL;

