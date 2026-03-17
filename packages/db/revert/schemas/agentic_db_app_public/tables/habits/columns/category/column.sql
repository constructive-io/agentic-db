-- Revert: schemas/agentic_db_app_public/tables/habits/columns/category/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN category RESTRICT;


