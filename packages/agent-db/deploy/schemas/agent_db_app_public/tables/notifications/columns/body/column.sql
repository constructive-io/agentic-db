-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/body/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/title/column


ALTER TABLE agent_db_app_public.notifications 
  ADD COLUMN body text;

