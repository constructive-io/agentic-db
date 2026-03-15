-- Revert: schemas/agent_db_app_public/tables/interactions/columns/entity_id/alterations/alt0000004138


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN entity_id DROP NOT NULL;


