-- Revert: schemas/agentic_db_app_public/tables/places/columns/notes/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN notes RESTRICT;


