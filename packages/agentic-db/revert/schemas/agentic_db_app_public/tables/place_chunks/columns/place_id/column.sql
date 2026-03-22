-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/place_id/column


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP COLUMN place_id RESTRICT;


