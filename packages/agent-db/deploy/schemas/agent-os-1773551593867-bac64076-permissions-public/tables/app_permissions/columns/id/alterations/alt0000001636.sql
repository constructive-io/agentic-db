-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/id/alterations/alt0000001636
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permissions 
  ALTER COLUMN id SET NOT NULL;

