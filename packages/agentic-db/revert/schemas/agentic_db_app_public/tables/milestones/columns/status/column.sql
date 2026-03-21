-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/status/column


ALTER TABLE agentic_db_app_public.milestones 
  DROP COLUMN status RESTRICT;


