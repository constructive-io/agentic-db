-- Revert: schemas/agent_db_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000000180




ALTER TABLE agent_db_status_public.app_achievements 
    ALTER COLUMN actor_id DROP DEFAULT;



