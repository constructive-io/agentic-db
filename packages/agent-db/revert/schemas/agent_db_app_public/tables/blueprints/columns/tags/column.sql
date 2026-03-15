-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/tags/column


ALTER TABLE agent_db_app_public.blueprints 
  DROP COLUMN tags RESTRICT;


