-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/city/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/location/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  ADD COLUMN city text;

