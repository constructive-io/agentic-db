-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP COLUMN embedding_stale RESTRICT;


