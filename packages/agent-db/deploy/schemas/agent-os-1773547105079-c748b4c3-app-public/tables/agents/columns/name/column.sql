-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/updated_at/alterations/alt0000002696


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  ADD COLUMN name text;

