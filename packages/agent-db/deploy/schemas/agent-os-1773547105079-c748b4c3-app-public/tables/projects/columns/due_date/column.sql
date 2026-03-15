-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/due_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/start_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ADD COLUMN due_date timestamptz;

