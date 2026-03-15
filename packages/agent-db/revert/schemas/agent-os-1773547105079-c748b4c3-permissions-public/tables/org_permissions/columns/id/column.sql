-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions 
  DROP COLUMN id RESTRICT;


