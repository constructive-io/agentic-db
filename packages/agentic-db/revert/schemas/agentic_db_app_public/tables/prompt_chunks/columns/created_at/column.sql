-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  DROP COLUMN created_at RESTRICT;


