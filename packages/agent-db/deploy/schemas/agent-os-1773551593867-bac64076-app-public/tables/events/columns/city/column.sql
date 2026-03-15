-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/city/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/location/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  ADD COLUMN city text;

