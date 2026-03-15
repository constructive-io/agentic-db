-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/title/alterations/alt0000002669


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  ADD COLUMN content text;

