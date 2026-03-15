-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions 
  DROP COLUMN id RESTRICT;


