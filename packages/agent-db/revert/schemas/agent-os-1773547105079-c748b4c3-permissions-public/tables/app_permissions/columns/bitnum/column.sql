-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitnum/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
  DROP COLUMN bitnum RESTRICT;


