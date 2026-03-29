-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/entity_id/alterations/alt0000005514


ALTER TABLE agentic_db_app_public.rules_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


