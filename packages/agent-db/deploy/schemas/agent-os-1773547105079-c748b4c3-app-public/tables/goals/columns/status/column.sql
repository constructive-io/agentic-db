-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/target_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ADD COLUMN status text;

