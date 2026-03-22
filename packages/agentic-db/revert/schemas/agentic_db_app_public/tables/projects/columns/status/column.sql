-- Revert: schemas/agentic_db_app_public/tables/projects/columns/status/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN status RESTRICT;


