-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/title/alterations/alt0000001396


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_events 
  ADD COLUMN description text;

