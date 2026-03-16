-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/id/column


ALTER TABLE "agentic_db_app_public".prompts 
  DROP COLUMN id RESTRICT;


