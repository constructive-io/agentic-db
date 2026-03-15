-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/constraints/org_permissions_name_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions 
  ADD CONSTRAINT org_permissions_name_key 
    UNIQUE (name);

