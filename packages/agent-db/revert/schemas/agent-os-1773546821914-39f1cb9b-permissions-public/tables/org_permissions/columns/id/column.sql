-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions 
  DROP COLUMN id RESTRICT;


