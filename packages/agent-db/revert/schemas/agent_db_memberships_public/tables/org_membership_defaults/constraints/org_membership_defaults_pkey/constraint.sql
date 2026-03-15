-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/constraints/org_membership_defaults_pkey/constraint


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  DROP CONSTRAINT org_membership_defaults_pkey;


