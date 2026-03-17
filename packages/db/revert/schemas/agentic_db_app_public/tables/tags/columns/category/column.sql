-- Revert: schemas/agentic_db_app_public/tables/tags/columns/category/column


ALTER TABLE "agentic_db_app_public".tags 
  DROP COLUMN category RESTRICT;


