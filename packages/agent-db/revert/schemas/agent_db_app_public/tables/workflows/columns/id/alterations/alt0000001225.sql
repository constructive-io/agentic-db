-- Revert: schemas/agent_db_app_public/tables/workflows/columns/id/alterations/alt0000001225


ALTER TABLE agent_db_app_public.workflows 
  ALTER COLUMN id DROP NOT NULL;


