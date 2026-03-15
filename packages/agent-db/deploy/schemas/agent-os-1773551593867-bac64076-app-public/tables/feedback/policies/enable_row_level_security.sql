-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/error/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ENABLE ROW LEVEL SECURITY;

