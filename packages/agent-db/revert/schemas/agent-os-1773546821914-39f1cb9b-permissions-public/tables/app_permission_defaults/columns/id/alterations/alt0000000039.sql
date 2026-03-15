-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/columns/id/alterations/alt0000000039


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permission_defaults 
  ALTER COLUMN id DROP NOT NULL;


