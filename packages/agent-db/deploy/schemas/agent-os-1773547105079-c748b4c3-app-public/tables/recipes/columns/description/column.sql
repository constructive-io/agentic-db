-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/name/alterations/alt0000003111


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  ADD COLUMN description text;

