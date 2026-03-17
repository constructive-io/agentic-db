-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/prep_time_minutes/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN prep_time_minutes RESTRICT;


