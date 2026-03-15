-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/variables/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/content/alterations/alt0000003169


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
  ADD COLUMN variables jsonb;

