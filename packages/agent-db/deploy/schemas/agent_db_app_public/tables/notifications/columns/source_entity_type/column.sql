-- Deploy: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notifications/table
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_id/column


ALTER TABLE agent_db_app_public.notifications 
  ADD COLUMN source_entity_type text;

