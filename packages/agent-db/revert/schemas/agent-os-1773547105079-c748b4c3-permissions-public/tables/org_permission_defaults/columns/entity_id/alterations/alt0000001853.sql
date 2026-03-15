-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000001853


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


