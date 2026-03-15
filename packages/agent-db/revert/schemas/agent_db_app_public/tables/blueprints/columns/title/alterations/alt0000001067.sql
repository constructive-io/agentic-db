-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/title/alterations/alt0000001067


ALTER TABLE agent_db_app_public.blueprints 
  ALTER COLUMN title DROP NOT NULL;


