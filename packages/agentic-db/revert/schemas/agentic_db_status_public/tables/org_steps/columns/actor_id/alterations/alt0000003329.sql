-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/alterations/alt0000003329


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN actor_id DROP NOT NULL;


