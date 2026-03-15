-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/alterations/alt0000002747
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DISABLE ROW LEVEL SECURITY;

