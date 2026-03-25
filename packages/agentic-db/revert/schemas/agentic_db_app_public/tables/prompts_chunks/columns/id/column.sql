-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  DROP COLUMN id RESTRICT;


