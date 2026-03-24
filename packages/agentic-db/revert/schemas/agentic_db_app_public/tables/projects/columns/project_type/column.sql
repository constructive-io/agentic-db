-- Revert: schemas/agentic_db_app_public/tables/projects/columns/project_type/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN project_type RESTRICT;


