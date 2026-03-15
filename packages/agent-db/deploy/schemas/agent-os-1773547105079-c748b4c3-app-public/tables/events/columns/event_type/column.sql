-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/event_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/name/alterations/alt0000002456


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ADD COLUMN event_type text;

