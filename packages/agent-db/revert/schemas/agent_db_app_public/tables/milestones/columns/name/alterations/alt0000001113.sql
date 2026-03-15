-- Revert: schemas/agent_db_app_public/tables/milestones/columns/name/alterations/alt0000001113


ALTER TABLE agent_db_app_public.milestones 
  ALTER COLUMN name DROP NOT NULL;


