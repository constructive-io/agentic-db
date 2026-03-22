-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP COLUMN rule_id RESTRICT;


