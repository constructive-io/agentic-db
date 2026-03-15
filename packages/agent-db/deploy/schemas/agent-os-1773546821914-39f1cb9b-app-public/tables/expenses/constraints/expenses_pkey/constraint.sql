-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/constraints/expenses_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
  ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);

