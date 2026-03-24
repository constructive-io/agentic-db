-- Revert: schemas/agentic_db_app_public/tables/trips_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".trips_chunks 
  DROP COLUMN embedding RESTRICT;


