-- Deploy: schemas/agent_db_app_public/tables/habits/columns/id/alterations/alt0000004712
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/id/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN id SET NOT NULL;

