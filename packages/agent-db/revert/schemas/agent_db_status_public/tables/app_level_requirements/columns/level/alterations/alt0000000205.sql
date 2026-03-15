-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/level/alterations/alt0000000205


ALTER TABLE agent_db_status_public.app_level_requirements 
  ALTER COLUMN level DROP NOT NULL;


