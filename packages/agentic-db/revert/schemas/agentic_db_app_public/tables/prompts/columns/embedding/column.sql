-- Revert: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column


ALTER TABLE "agentic_db_app_public".prompts 
  DROP COLUMN embedding RESTRICT;


