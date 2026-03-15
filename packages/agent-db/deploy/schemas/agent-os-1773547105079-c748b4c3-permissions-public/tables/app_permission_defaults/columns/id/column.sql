-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permission_defaults/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permission_defaults 
  ADD COLUMN id uuid;

