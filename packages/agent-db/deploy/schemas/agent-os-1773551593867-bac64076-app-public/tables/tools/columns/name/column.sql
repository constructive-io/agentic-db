-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/updated_at/alterations/alt0000002830


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tools 
  ADD COLUMN name text;

