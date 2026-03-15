-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permission_defaults 
  DROP COLUMN id RESTRICT;


