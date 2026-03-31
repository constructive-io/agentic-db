-- Revert: schemas/agentic_db_app_public/tables/rules/columns/entity_id/column


ALTER TABLE agentic_db_app_public.rules 
  DROP COLUMN entity_id RESTRICT;


