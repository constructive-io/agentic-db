-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/constraints/app_permissions_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permissions 
  ADD CONSTRAINT app_permissions_pkey PRIMARY KEY (id);

