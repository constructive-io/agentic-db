-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/entity_id/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN entity_id RESTRICT;


