-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/is_recurring/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/receipt_url/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ADD COLUMN is_recurring bool;

