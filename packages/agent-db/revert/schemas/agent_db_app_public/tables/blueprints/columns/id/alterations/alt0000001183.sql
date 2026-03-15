-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/id/alterations/alt0000001183


ALTER TABLE agent_db_app_public.blueprints 
  ALTER COLUMN id DROP NOT NULL;


