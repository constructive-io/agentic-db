-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/execution_log/columns/updated_at/alterations/alt0000001155


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".execution_log 
  ADD COLUMN session_id uuid;

