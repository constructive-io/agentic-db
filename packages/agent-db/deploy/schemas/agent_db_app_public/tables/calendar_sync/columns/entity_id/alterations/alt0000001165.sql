-- Deploy: schemas/agent_db_app_public/tables/calendar_sync/columns/entity_id/alterations/alt0000001165
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_sync/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/calendar_sync/columns/entity_id/column


ALTER TABLE agent_db_app_public.calendar_sync 
  ALTER COLUMN entity_id SET NOT NULL;

