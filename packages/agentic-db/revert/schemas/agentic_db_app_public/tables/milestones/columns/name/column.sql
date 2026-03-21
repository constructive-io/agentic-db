-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/name/column


ALTER TABLE agentic_db_app_public.milestones 
  DROP COLUMN name RESTRICT;


