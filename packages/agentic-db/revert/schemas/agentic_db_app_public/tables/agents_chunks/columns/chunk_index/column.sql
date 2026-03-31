-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.agents_chunks 
  DROP COLUMN chunk_index RESTRICT;


