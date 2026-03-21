-- Revert: schemas/agentic_db_app_public/tables/projects/columns/start_date/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN start_date RESTRICT;


