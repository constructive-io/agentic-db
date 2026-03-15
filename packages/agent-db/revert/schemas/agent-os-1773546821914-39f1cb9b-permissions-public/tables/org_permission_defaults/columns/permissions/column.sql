-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/columns/permissions/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permission_defaults 
  DROP COLUMN permissions RESTRICT;


