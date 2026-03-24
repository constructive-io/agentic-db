-- Revert: schemas/agentic_db_app_public/tables/projects/columns/target_date/column


ALTER TABLE "agentic_db_app_public".projects 
  DROP COLUMN target_date RESTRICT;


