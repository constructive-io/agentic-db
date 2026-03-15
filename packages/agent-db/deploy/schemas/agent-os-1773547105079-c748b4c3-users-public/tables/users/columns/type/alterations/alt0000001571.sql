-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/type/alterations/alt0000001571
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/type/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
    ALTER COLUMN type SET DEFAULT 1;

