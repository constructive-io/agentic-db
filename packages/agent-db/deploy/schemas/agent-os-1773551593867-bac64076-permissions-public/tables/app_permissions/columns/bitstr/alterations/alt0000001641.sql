-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000001641
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitstr/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

