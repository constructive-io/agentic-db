-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/progress_pct/alterations/alt0000002656


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ADD COLUMN tags citext[];

