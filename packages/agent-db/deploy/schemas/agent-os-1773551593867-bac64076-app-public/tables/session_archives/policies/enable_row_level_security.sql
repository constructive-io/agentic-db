-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/strength/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ENABLE ROW LEVEL SECURITY;

