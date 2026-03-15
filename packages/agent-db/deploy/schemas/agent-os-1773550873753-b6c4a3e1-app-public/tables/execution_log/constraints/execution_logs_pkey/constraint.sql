-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/constraints/execution_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  ADD CONSTRAINT execution_logs_pkey PRIMARY KEY (id);

