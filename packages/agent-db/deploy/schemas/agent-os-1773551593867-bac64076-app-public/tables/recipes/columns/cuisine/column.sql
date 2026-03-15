-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/cuisine/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/description/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ADD COLUMN cuisine text;

