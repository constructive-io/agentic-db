-- Revert: schemas/agent_db_app_public/tables/goal_projects/constraints/goal_projects_pkey/constraint


ALTER TABLE agent_db_app_public.goal_projects 
  DROP CONSTRAINT goal_projects_pkey;


