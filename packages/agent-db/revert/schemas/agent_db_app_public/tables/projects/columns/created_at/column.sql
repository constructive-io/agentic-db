-- Revert: schemas/agent_db_app_public/tables/projects/columns/created_at/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN created_at RESTRICT;


