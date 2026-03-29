-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/actor_id/alterations/alt0000003043


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


