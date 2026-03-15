-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/created_at/alterations/alt0000001063


ALTER TABLE agent_db_app_public.blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


