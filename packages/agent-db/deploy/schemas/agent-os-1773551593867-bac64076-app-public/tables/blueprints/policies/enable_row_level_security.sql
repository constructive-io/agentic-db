-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ENABLE ROW LEVEL SECURITY;

