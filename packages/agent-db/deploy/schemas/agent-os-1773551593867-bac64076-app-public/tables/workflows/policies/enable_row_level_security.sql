-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ENABLE ROW LEVEL SECURITY;

