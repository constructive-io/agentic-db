-- Revert: schemas/agent_db_app_public/tables/agent_tools/columns/entity_id/alterations/alt0000004525


ALTER TABLE "agent_db_app_public".agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


