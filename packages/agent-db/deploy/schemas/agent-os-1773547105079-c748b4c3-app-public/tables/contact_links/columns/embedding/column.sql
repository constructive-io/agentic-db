-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_links/columns/url/alterations/alt0000002516


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_links 
  ADD COLUMN embedding vector(768);

