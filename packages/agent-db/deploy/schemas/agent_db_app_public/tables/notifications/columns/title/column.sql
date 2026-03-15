-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/updated_at/alterations/alt0000001541


ALTER TABLE agent_db_app_public.notifications 
  ADD COLUMN title text;

