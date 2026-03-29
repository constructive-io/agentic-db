-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.rules_chunks 
  DROP COLUMN entity_id RESTRICT;


