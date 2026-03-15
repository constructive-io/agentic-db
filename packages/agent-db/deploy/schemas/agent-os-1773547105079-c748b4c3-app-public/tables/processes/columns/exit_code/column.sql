-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/exit_code/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/status/alterations/alt0000002760


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ADD COLUMN exit_code int;

