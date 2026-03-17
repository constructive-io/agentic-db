-- Revert: schemas/agentic_db_app_public/tables/projects/columns/name/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN name RESTRICT;


