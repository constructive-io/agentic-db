-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/alterations/alt0000004028


ALTER TABLE agentic_db_app_public.rule_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


