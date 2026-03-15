-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/is_approved/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
  DROP COLUMN is_approved RESTRICT;


