-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permission_defaults/columns/id/alterations/alt0000000287


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".org_permission_defaults 
  ALTER COLUMN id DROP NOT NULL;


