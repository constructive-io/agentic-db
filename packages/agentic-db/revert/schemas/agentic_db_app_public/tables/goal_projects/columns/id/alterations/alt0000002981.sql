-- Revert: schemas/agentic_db_app_public/tables/goal_projects/columns/id/alterations/alt0000002981


ALTER TABLE agentic_db_app_public.goal_projects 
  ALTER COLUMN id DROP NOT NULL;


