-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/processes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".processes 
  ENABLE ROW LEVEL SECURITY;

