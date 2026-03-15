-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/content/alterations/alt0000003169
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/type/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/content/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
  ALTER COLUMN content SET NOT NULL;

