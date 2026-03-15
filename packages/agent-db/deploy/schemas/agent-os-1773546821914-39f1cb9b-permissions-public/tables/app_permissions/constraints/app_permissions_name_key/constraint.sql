-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/constraints/app_permissions_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions 
  ADD CONSTRAINT app_permissions_name_key 
    UNIQUE (name);

