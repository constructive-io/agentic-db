-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/updated_at/alterations/alt0000003041


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  ADD COLUMN content text;

