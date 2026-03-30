-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/category/column


ALTER TABLE "agentic_db_app_public".prompts 
  DROP COLUMN category RESTRICT;


