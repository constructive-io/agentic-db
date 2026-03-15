-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/name/alterations/alt0000002697
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/updated_at/alterations/alt0000002696


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  ALTER COLUMN name SET NOT NULL;

