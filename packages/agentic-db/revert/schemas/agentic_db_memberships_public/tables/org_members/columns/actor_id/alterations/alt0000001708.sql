-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/actor_id/alterations/alt0000001708


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN actor_id DROP NOT NULL;


