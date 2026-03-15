-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/destination/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/name/alterations/alt0000001471


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  ADD COLUMN destination text;

