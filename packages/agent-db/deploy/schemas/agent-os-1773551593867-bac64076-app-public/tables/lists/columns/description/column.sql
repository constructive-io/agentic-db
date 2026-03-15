-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/name/alterations/alt0000003132


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
  ADD COLUMN description text;

