-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE agent_db_app_public.blueprints 
  DROP COLUMN trigger_conditions RESTRICT;


