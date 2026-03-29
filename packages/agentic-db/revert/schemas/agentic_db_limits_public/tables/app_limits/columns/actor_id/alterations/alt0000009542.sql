-- Revert: schemas/agentic_db_limits_public/tables/app_limits/columns/actor_id/alterations/alt0000009542


ALTER TABLE agentic_db_limits_public.app_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


