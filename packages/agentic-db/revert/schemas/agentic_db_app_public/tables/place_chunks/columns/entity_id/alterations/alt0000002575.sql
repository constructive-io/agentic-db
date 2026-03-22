-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/entity_id/alterations/alt0000002575


ALTER TABLE "agentic_db_app_public".place_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


