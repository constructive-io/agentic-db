-- Revert: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/permissions/alterations/alt0000001898


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


