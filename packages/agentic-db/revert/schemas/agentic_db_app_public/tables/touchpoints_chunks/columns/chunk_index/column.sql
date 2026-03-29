-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.touchpoints_chunks 
  DROP COLUMN chunk_index RESTRICT;


