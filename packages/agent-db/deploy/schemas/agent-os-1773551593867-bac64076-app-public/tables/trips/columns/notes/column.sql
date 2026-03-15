-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/notes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/status/alterations/alt0000003081


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ADD COLUMN notes text;

