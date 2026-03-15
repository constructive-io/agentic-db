-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/content/alterations/alt0000002970
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/content/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/repository_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ALTER COLUMN content SET NOT NULL;

