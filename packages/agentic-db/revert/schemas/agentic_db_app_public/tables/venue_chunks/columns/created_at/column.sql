-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".venue_chunks 
  DROP COLUMN created_at RESTRICT;


