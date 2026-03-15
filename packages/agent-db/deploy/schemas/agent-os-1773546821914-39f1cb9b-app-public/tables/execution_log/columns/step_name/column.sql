-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/step_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".execution_log 
  ADD COLUMN step_name text;

