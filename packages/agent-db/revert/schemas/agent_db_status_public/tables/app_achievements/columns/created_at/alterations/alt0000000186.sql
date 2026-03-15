-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/created_at/alterations/alt0000000186


ALTER TABLE agent_db_status_public.app_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


