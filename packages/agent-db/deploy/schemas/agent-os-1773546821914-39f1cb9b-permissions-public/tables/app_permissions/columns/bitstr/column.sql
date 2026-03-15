-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/bitstr/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions 
  ADD COLUMN bitstr bit(24);

