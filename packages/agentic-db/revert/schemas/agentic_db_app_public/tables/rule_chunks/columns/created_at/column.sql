-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP COLUMN created_at RESTRICT;


