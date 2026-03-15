-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/entity_id/alterations/alt0000004500


ALTER TABLE "agent_db_app_public".session_archives 
  ALTER COLUMN entity_id DROP NOT NULL;


