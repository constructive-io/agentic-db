-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/constraints/org_memberships_pkey/constraint


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DROP CONSTRAINT org_memberships_pkey;


