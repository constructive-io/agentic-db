-- Deploy: schemas/agent_db_app_public/tables/reminders/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/reminders/table
-- requires: schemas/agent_db_app_public/tables/reminders/columns/updated_at/alterations/alt0000001490


ALTER TABLE agent_db_app_public.reminders 
  ADD COLUMN title text;

