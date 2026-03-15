-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE agent_db_app_public.blueprints 
  DROP COLUMN embedding RESTRICT;


