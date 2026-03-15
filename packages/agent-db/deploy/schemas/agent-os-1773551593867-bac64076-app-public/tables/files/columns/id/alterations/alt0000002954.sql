-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/id/alterations/alt0000002954
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  ALTER COLUMN id SET NOT NULL;

