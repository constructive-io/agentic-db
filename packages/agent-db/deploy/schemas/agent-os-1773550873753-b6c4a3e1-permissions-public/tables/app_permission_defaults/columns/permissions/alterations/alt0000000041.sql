-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/columns/permissions/alterations/alt0000000041
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/columns/permissions/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permission_defaults 
  ALTER COLUMN permissions SET NOT NULL;

