-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/actor_id/alterations/alt0000000497


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN actor_id DROP NOT NULL;


