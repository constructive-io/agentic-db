-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.rule_chunks 
  DROP COLUMN entity_id RESTRICT;


