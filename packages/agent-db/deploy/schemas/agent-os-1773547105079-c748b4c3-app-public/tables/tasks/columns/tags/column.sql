-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/dependencies/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ADD COLUMN tags citext[];

