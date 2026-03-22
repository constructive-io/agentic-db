-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/actor_id/alterations/alt0000005047


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN actor_id DROP NOT NULL;


