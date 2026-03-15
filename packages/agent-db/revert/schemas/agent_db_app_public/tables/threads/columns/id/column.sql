-- Revert: schemas/agent_db_app_public/tables/threads/columns/id/column


ALTER TABLE agent_db_app_public.threads 
  DROP COLUMN id RESTRICT;


