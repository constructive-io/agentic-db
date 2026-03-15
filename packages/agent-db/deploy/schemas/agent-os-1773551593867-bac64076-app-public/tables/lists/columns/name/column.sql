-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/updated_at/alterations/alt0000003131


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
  ADD COLUMN name text;

