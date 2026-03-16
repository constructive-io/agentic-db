-- Deploy: schemas/agent_db_app_public/tables/habits/columns/entity_id/alterations/alt0000002314
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN entity_id SET NOT NULL;

