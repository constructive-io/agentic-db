-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitstr/alterations/alt0000001841


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


