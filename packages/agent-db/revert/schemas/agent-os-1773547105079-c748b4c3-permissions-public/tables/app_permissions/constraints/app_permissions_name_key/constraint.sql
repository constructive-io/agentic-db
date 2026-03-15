-- Revert: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/constraints/app_permissions_name_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
  DROP CONSTRAINT app_permissions_name_key;


