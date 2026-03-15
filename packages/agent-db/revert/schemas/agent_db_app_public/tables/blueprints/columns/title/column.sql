-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/title/column


ALTER TABLE agent_db_app_public.blueprints 
  DROP COLUMN title RESTRICT;


