-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/source_entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/action_url/column


ALTER TABLE agent_db_app_public.notifications 
  ADD COLUMN source_entity_id uuid;

