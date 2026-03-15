-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/updated_at/alterations/alt0000003158


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ADD COLUMN name text;

