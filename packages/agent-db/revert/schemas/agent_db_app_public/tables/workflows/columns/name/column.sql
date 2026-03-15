-- Revert: schemas/agent_db_app_public/tables/workflows/columns/name/column


ALTER TABLE agent_db_app_public.workflows 
  DROP COLUMN name RESTRICT;


