-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/title/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ADD COLUMN url text;

