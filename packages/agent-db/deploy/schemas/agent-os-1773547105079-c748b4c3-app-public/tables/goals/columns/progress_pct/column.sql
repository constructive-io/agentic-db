-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/progress_pct/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/category/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ADD COLUMN progress_pct int;

