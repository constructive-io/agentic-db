-- Revert: schemas/agentic_db_app_public/tables/events/columns/notes/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN notes RESTRICT;


