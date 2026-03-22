-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/actor_id/alterations/alt0000001241


ALTER TABLE "agentic_db_memberships_public".org_admin_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


