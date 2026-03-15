-- Revert: schemas/agent_db_app_public/tables/repositories/columns/entity_id/alterations/alt0000004556


ALTER TABLE "agent_db_app_public".repositories 
  ALTER COLUMN entity_id DROP NOT NULL;


