-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/alterations/alt0000009989


ALTER TABLE agentic_db_status_public.org_steps 
  ALTER COLUMN actor_id DROP NOT NULL;


