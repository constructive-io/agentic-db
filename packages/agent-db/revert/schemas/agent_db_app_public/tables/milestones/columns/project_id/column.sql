-- Revert: schemas/agent_db_app_public/tables/milestones/columns/project_id/column


ALTER TABLE agent_db_app_public.milestones 
  DROP COLUMN project_id RESTRICT;


