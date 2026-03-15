-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/content/alterations/alt0000002476
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/content/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/updated_at/alterations/alt0000002475


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  ALTER COLUMN content SET NOT NULL;

