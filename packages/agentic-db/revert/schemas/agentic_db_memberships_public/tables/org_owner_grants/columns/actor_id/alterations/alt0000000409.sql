-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/actor_id/alterations/alt0000000409


ALTER TABLE "agentic_db_memberships_public".org_owner_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


