-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions 
  ADD COLUMN description text;

