-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000001899


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
  ALTER COLUMN is_approved DROP NOT NULL;


