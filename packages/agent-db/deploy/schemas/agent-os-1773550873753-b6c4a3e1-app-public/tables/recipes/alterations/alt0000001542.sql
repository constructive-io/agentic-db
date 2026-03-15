-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/alterations/alt0000001542
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  DISABLE ROW LEVEL SECURITY;

