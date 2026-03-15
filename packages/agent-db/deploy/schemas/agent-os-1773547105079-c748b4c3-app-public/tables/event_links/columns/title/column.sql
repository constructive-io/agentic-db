-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/updated_at/alterations/alt0000002533


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ADD COLUMN title text;

