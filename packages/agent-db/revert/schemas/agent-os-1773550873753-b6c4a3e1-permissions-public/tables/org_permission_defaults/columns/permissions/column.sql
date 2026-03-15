-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permission_defaults/columns/permissions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permission_defaults 
  DROP COLUMN permissions RESTRICT;


