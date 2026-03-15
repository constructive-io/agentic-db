-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/constraints/org_memberships_profile_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  DROP CONSTRAINT org_memberships_profile_id_fkey;


