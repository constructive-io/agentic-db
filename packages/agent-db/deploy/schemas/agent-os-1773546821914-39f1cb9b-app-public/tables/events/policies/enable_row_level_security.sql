-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ENABLE ROW LEVEL SECURITY;

