-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ENABLE ROW LEVEL SECURITY;

