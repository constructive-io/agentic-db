-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/completed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/due_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ADD COLUMN completed_at timestamptz;

