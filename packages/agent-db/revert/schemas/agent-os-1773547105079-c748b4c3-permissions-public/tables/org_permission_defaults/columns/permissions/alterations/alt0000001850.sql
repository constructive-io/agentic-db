-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/columns/permissions/alterations/alt0000001850


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


