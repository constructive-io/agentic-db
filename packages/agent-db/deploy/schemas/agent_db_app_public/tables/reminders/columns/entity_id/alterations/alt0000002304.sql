-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/entity_id/alterations/alt0000002304
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/entity_id/column


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN entity_id SET NOT NULL;

