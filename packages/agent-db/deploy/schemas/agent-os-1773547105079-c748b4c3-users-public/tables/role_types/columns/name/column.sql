-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".role_types 
  ADD COLUMN name citext;

