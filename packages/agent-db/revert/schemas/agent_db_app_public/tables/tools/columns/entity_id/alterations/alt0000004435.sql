-- Revert: schemas/agent_db_app_public/tables/tools/columns/entity_id/alterations/alt0000004435


ALTER TABLE "agent_db_app_public".tools 
  ALTER COLUMN entity_id DROP NOT NULL;


