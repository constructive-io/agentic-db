-- Revert: schemas/agent_db_app_public/tables/templates/columns/entity_id/alterations/alt0000004724


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN entity_id DROP NOT NULL;


