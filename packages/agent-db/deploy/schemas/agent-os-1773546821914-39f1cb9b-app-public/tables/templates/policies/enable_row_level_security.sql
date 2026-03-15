-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ENABLE ROW LEVEL SECURITY;

