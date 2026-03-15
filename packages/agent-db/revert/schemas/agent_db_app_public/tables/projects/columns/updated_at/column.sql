-- Revert: schemas/agent_db_app_public/tables/projects/columns/updated_at/column


ALTER TABLE agent_db_app_public.projects 
  DROP COLUMN updated_at RESTRICT;


