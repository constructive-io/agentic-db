-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/content/alterations/alt0000003121
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/type/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/content/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".templates 
  ALTER COLUMN content SET NOT NULL;

