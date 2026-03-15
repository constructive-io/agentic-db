-- Revert: schemas/agent_db_app_public/tables/milestones/columns/created_at/column


ALTER TABLE agent_db_app_public.milestones 
  DROP COLUMN created_at RESTRICT;


