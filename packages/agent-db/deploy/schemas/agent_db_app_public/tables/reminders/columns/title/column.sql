-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000004708


ALTER TABLE "agent_db_app_public".reminders 
  ADD COLUMN title text;

