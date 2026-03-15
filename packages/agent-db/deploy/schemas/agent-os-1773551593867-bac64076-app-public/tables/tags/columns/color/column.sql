-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/color/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/name/alterations/alt0000002545


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  ADD COLUMN color text;

