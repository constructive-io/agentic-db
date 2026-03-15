-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ENABLE ROW LEVEL SECURITY;

