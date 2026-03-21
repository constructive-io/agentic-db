-- Revert: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE agentic_db_app_public.milestones 
  DROP CONSTRAINT milestones_project_id_fkey;


