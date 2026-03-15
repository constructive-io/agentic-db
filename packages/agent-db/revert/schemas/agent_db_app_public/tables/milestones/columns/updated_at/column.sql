-- Revert: schemas/agent_db_app_public/tables/milestones/columns/updated_at/column


ALTER TABLE agent_db_app_public.milestones 
  DROP COLUMN updated_at RESTRICT;


