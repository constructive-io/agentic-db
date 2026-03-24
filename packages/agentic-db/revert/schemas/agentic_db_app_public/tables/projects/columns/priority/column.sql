-- Revert: schemas/agentic_db_app_public/tables/projects/columns/priority/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN priority RESTRICT;


