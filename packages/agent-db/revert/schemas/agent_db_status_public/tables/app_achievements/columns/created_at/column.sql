-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/created_at/column


ALTER TABLE agent_db_status_public.app_achievements 
  DROP COLUMN created_at RESTRICT;


