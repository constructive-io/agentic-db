-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP COLUMN chunk_index RESTRICT;


