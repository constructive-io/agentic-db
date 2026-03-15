-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/preferred_model/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/system_prompt/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  ADD COLUMN preferred_model text;

