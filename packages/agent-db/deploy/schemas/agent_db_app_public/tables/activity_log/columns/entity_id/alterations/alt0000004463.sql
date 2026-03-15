-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/entity_id/alterations/alt0000004463
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent_db_app_public".activity_log 
  ALTER COLUMN entity_id SET NOT NULL;

