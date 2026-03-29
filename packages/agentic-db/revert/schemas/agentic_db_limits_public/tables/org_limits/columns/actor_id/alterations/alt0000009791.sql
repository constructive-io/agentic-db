-- Revert: schemas/agentic_db_limits_public/tables/org_limits/columns/actor_id/alterations/alt0000009791


ALTER TABLE agentic_db_limits_public.org_limits 
  ALTER COLUMN actor_id DROP NOT NULL;


