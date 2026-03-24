-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".venues_chunks 
  DROP COLUMN content RESTRICT;


