-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/notable_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/notable_type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  ADD COLUMN notable_id uuid;

