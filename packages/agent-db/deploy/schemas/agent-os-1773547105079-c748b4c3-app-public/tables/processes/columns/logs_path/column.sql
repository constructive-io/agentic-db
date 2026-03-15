-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/logs_path/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/exit_code/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ADD COLUMN logs_path text;

