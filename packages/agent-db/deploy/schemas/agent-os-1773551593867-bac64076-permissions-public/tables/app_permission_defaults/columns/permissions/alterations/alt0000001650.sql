-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/columns/permissions/alterations/alt0000001650
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permission_defaults/columns/permissions/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permission_defaults 
  ALTER COLUMN permissions SET NOT NULL;

