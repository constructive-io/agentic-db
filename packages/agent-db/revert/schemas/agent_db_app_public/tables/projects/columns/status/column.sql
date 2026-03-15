-- Revert: schemas/agent_db_app_public/tables/projects/columns/status/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN status RESTRICT;


