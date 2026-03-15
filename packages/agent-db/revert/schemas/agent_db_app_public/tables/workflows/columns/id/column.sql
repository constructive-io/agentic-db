-- Revert: schemas/agent_db_app_public/tables/workflows/columns/id/column


ALTER TABLE agent_db_app_public.workflows 
  DROP COLUMN id RESTRICT;


