-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.agents_chunks 
  DROP COLUMN embedding RESTRICT;


