-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permission_defaults 
  DROP COLUMN permissions RESTRICT;


