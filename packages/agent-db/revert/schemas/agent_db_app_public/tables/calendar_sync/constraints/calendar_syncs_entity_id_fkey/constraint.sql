-- Revert: schemas/agent_db_app_public/tables/calendar_sync/constraints/calendar_syncs_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".calendar_sync 
  DROP CONSTRAINT calendar_syncs_entity_id_fkey;


