-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/updated_at/alterations/alt0000002840


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ADD COLUMN name text;

