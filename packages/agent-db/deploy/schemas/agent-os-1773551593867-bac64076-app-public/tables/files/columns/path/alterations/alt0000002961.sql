-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/path/alterations/alt0000002961
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/path/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/repository_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  ALTER COLUMN path SET NOT NULL;

