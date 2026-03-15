-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/alterations/alt0000002467
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  DISABLE ROW LEVEL SECURITY;

