-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".trips_chunks 
  DROP COLUMN content RESTRICT;


