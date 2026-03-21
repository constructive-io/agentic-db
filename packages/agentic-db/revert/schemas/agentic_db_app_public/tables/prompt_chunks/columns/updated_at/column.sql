-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  DROP COLUMN updated_at RESTRICT;


