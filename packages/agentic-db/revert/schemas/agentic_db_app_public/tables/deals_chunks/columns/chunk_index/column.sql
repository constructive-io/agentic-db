-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.deals_chunks 
  DROP COLUMN chunk_index RESTRICT;


