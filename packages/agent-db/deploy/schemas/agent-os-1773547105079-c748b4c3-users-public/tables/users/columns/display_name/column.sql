-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/display_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  ADD COLUMN display_name text;

