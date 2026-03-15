-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/name/alterations/alt0000002841


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ADD COLUMN description text;

