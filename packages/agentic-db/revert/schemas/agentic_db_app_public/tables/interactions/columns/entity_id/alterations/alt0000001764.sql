-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/entity_id/alterations/alt0000001764


ALTER TABLE "agentic_db_app_public".interactions 
  ALTER COLUMN entity_id DROP NOT NULL;


