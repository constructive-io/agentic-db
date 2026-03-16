-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/columns/updated_at/alterations/alt0000001267


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


