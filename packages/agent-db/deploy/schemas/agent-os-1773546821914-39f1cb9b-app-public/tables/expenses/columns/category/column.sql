-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ADD COLUMN category text;

