-- Revert: schemas/agent_db_app_public/tables/chunks/columns/entity_id/alterations/alt0000002174


ALTER TABLE "agent_db_app_public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


