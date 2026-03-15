-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/constraints/org_membership_defaults_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
  DROP CONSTRAINT org_membership_defaults_entity_id_fkey;


