-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/completed_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/due_at/column


ALTER TABLE "agent_db_app_public".reminders 
  ADD COLUMN completed_at timestamptz;

