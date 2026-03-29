-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/actor_id/alterations/alt0000002958


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


