-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ENABLE ROW LEVEL SECURITY;

