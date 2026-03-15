-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/columns/name/alterations/alt0000001569
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".role_types 
  ALTER COLUMN name SET NOT NULL;

