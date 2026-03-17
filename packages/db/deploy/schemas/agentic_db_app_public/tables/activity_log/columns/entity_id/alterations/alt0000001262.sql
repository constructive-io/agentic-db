-- Deploy: schemas/agentic_db_app_public/tables/activity_log/columns/entity_id/alterations/alt0000001262
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN entity_id SET NOT NULL;

