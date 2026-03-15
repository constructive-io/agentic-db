-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/constraints/execution_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ADD CONSTRAINT execution_logs_pkey PRIMARY KEY (id);

