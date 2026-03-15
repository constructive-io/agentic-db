-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/due_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/title/alterations/alt0000004709


ALTER TABLE "agent_db_app_public".reminders 
  ADD COLUMN due_at timestamptz;

