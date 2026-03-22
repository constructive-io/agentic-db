-- Revert: schemas/agentic_db_app_public/tables/goal_projects/constraints/goal_projects_pkey/constraint


ALTER TABLE agentic_db_app_public.goal_projects 
  DROP CONSTRAINT goal_projects_pkey;


