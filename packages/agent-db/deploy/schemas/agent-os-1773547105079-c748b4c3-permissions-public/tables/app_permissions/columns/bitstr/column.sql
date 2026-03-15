-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitstr/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
  ADD COLUMN bitstr bit(24);

