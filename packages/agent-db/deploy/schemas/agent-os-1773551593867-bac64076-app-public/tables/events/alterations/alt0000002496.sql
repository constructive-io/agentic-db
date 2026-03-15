-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/alterations/alt0000002496
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  DISABLE ROW LEVEL SECURITY;

