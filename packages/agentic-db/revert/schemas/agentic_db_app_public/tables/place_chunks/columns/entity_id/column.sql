-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP COLUMN entity_id RESTRICT;


