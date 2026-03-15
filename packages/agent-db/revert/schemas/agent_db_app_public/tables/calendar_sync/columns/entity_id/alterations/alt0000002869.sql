-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/entity_id/alterations/alt0000002869


ALTER TABLE "agent_db_app_public".calendar_sync 
  ALTER COLUMN entity_id DROP NOT NULL;


