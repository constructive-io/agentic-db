-- Deploy: schemas/agent_db_app_public/tables/habits/columns/entity_id/alterations/alt0000004714
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN entity_id SET NOT NULL;

