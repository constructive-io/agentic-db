-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/entity_id/alterations/alt0000001304


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN entity_id DROP NOT NULL;


