-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/slug/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/is_active/alterations/alt0000002622


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  ADD COLUMN slug text;

