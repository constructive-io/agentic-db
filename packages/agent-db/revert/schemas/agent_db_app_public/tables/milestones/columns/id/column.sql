-- Revert: schemas/agent_db_app_public/tables/milestones/columns/id/column


ALTER TABLE agent_db_app_public.milestones 
  DROP COLUMN id RESTRICT;


