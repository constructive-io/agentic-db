-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/title/alterations/alt0000002309
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/title/column
-- requires: schemas/agent_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000002308


ALTER TABLE "agent_db_app_public".reminders 
  ALTER COLUMN title SET NOT NULL;

