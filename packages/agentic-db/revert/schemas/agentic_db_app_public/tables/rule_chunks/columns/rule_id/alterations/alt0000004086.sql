-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/alterations/alt0000004086


ALTER TABLE agentic_db_app_public.rule_chunks 
  ALTER COLUMN rule_id DROP NOT NULL;


