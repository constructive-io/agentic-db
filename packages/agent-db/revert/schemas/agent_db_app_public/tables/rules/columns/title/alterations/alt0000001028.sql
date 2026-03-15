-- Revert: schemas/agent_db_app_public/tables/rules/columns/title/alterations/alt0000001028


ALTER TABLE agent_db_app_public.rules 
  ALTER COLUMN title DROP NOT NULL;


