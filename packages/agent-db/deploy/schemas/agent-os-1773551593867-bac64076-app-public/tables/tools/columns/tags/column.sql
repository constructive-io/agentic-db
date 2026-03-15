-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/is_active/alterations/alt0000002832


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ADD COLUMN tags citext[];

