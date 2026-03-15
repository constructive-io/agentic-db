-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_memberships/columns/is_admin/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_memberships 
  DROP COLUMN is_admin RESTRICT;


