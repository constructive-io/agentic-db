-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".events_chunks 
  DROP COLUMN content RESTRICT;


