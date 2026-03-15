-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/id/alterations/alt0000000027
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions 
  ALTER COLUMN id SET NOT NULL;

