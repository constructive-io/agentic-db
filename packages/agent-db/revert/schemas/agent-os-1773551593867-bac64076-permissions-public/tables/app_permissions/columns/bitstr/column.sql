-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitstr/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permissions 
  DROP COLUMN bitstr RESTRICT;


