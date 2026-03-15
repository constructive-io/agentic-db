-- Deploy: schemas/agent_db_app_public/tables/habits/alterations/alt0000004663
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agent_db_app_public".habits 
  DISABLE ROW LEVEL SECURITY;

