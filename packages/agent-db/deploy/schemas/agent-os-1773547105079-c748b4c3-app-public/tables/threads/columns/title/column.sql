-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/updated_at/alterations/alt0000002740


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ADD COLUMN title text;

