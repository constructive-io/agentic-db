-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ENABLE ROW LEVEL SECURITY;

