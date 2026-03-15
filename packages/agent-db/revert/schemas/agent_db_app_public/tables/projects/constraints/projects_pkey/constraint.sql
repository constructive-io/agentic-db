-- Revert: schemas/agent_db_app_public/tables/projects/constraints/projects_pkey/constraint


ALTER TABLE agent_db_app_public.projects 
  DROP CONSTRAINT projects_pkey;


