-- Revert: schemas/agent_db_app_public/tables/goal_projects/columns/goal_id/alterations/alt0000001575


ALTER TABLE agent_db_app_public.goal_projects 
  ALTER COLUMN goal_id DROP NOT NULL;


