-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.interactions_chunks 
  DROP COLUMN chunk_index RESTRICT;


