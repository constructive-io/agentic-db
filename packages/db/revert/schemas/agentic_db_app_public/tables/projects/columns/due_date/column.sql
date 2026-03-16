-- Revert: schemas/agentic_db_app_public/tables/projects/columns/due_date/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN due_date RESTRICT;


