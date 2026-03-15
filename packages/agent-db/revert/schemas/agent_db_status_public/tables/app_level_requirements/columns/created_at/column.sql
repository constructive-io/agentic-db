-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/created_at/column


ALTER TABLE agent_db_status_public.app_level_requirements 
  DROP COLUMN created_at RESTRICT;


