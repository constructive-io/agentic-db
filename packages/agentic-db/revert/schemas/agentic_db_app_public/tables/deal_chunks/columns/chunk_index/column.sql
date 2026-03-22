-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.deal_chunks 
  DROP COLUMN chunk_index RESTRICT;


