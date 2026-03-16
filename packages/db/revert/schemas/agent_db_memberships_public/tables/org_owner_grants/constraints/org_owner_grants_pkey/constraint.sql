-- Revert: schemas/agent_db_memberships_public/tables/org_owner_grants/constraints/org_owner_grants_pkey/constraint


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  DROP CONSTRAINT org_owner_grants_pkey;


