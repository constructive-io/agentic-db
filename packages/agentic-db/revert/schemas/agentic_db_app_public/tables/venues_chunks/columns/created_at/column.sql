-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".venues_chunks 
  DROP COLUMN created_at RESTRICT;


