-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/rule_id/column


ALTER TABLE agentic_db_app_public.rules_chunks 
  DROP COLUMN rule_id RESTRICT;


