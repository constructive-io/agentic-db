-- Revert: schemas/agentic_db_app_public/tables/habits/columns/streak/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN streak RESTRICT;


