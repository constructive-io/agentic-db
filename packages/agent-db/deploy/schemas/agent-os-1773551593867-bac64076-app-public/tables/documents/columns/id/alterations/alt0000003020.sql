-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/id/alterations/alt0000003020
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  ALTER COLUMN id SET NOT NULL;

