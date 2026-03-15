-- Revert: schemas/agent_db_app_public/tables/tasks/columns/id/alterations/alt0000001042


ALTER TABLE agent_db_app_public.tasks 
  ALTER COLUMN id DROP NOT NULL;


