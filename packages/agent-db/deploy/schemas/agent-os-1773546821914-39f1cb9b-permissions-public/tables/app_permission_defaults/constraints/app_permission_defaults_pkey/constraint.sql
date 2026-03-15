-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/constraints/app_permission_defaults_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permission_defaults 
  ADD CONSTRAINT app_permission_defaults_pkey PRIMARY KEY (id);

