-- Revert: schemas/agent_db_app_public/tables/rules/columns/created_at/alterations/alt0000001056


ALTER TABLE agent_db_app_public.rules 
  ALTER COLUMN created_at DROP NOT NULL;


