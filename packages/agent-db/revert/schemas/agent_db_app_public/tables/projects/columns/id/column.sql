-- Revert: schemas/agent_db_app_public/tables/projects/columns/id/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN id RESTRICT;


