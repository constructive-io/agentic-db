-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000003638


ALTER TABLE "agent_db_memberships_public".org_grants 
  ALTER COLUMN permissions DROP NOT NULL;


