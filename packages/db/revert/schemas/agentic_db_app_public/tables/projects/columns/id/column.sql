-- Revert: schemas/agentic_db_app_public/tables/projects/columns/id/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN id RESTRICT;


