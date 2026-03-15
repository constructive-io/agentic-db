-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
  ADD COLUMN content jsonb;

