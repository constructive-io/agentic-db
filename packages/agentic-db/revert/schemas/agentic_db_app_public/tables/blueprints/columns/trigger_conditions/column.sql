-- Revert: schemas/agentic_db_app_public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE agentic_db_app_public.blueprints 
  DROP COLUMN trigger_conditions RESTRICT;


