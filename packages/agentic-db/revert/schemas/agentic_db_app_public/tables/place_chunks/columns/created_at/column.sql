-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".place_chunks 
  DROP COLUMN created_at RESTRICT;


