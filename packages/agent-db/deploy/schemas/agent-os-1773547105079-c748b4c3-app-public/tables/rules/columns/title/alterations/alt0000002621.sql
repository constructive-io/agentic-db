-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/title/alterations/alt0000002621
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/title/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/updated_at/alterations/alt0000002620


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  ALTER COLUMN title SET NOT NULL;

