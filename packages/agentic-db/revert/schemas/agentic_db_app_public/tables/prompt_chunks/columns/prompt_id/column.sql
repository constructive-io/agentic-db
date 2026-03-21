-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/prompt_id/column


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  DROP COLUMN prompt_id RESTRICT;


