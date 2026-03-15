-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000000033
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/bitstr/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions 
    ALTER COLUMN bitstr SET DEFAULT lpad('', 24, '0')::bit(24);

