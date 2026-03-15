-- Revert: schemas/agent_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000001111


ALTER TABLE agent_db_app_public.milestones 
  ALTER COLUMN updated_at DROP NOT NULL;


