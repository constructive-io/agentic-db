-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permissions 
  DROP COLUMN description RESTRICT;


