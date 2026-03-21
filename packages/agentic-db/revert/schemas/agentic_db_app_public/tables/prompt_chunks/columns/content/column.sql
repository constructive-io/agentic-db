-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  DROP COLUMN content RESTRICT;


