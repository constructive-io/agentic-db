-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".venues_chunks 
  DROP COLUMN updated_at RESTRICT;


