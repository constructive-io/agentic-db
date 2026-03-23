-- Revert: schemas/agentic_db_status_public/tables/app_steps/columns/actor_id/alterations/alt0000001879


ALTER TABLE agentic_db_status_public.app_steps 
  ALTER COLUMN actor_id DROP NOT NULL;


