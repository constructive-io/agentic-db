-- Revert: schemas/agentic_db_status_public/tables/app_achievements/columns/actor_id/alterations/alt0000001503


ALTER TABLE agentic_db_status_public.app_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


