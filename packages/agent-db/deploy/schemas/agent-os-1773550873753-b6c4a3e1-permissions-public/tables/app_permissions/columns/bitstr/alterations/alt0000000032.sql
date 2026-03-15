-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000000032
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/bitstr/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

