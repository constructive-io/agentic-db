-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
  DROP COLUMN entity_id RESTRICT;


