-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/alterations/alt0000002953
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/repositories/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  DISABLE ROW LEVEL SECURITY;

