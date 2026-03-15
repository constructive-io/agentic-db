-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/content/alterations/alt0000003042
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/content/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/updated_at/alterations/alt0000003041


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  ALTER COLUMN content SET NOT NULL;

