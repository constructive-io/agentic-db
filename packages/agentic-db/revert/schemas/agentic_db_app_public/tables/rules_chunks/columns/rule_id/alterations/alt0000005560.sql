-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/rule_id/alterations/alt0000005560


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN rule_id DROP NOT NULL;


