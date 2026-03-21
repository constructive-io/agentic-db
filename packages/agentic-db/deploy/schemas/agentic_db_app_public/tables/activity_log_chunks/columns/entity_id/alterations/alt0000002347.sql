-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/entity_id/alterations/alt0000002347
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

