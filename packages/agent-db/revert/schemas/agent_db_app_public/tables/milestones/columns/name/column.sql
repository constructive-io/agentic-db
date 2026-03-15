-- Revert: schemas/agent_db_app_public/tables/milestones/columns/name/column


ALTER TABLE agent_db_app_public.milestones 
  DROP COLUMN name RESTRICT;


