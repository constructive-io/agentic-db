-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/id/column


ALTER TABLE agent_db_app_public.blueprints 
  DROP COLUMN id RESTRICT;


