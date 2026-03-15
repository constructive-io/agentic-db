-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/name/alterations/alt0000002878
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/updated_at/alterations/alt0000002877


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ALTER COLUMN name SET NOT NULL;

