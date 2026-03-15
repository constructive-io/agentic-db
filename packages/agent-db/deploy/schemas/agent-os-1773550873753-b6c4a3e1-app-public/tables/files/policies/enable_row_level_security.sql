-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/files/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".files 
  ENABLE ROW LEVEL SECURITY;

