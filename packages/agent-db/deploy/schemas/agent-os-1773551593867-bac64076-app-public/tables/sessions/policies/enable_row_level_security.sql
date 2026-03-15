-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  ENABLE ROW LEVEL SECURITY;

