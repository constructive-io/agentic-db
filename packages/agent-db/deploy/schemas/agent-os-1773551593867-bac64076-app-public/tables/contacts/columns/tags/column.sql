-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/location_geo/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ADD COLUMN tags citext[];

