-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
  DROP COLUMN delete_member_cascade_groups RESTRICT;


