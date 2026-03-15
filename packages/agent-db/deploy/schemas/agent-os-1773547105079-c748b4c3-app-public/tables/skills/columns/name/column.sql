-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/updated_at/alterations/alt0000002641


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
  ADD COLUMN name text;

