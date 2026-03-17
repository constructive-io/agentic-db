-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/model/column


ALTER TABLE "agentic_db_app_public".prompts 
  DROP COLUMN model RESTRICT;


