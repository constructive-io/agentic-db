-- Revert: schemas/agentic_db_app_public/tables/venues/columns/notes/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN notes RESTRICT;


