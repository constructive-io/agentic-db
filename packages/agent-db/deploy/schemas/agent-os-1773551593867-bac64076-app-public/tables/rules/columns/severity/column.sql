-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/severity/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/kind/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  ADD COLUMN severity text;

