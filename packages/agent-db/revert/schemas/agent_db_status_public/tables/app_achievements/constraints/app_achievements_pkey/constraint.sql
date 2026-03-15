-- Revert: schemas/agent_db_status_public/tables/app_achievements/constraints/app_achievements_pkey/constraint


ALTER TABLE agent_db_status_public.app_achievements 
  DROP CONSTRAINT app_achievements_pkey;


