-- Revert: schemas/agentic_db_app_public/tables/venues/columns/category/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN category RESTRICT;


