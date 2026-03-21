-- Revert: schemas/agentic_db_app_public/tables/milestones/constraints/milestones_pkey/constraint


ALTER TABLE agentic_db_app_public.milestones 
  DROP CONSTRAINT milestones_pkey;


