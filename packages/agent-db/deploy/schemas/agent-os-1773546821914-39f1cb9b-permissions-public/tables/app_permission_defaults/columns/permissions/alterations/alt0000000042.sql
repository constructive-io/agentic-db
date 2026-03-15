-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/columns/permissions/alterations/alt0000000042
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/columns/permissions/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permission_defaults 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

