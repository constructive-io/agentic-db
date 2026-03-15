-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/step_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/session_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ADD COLUMN step_name text;

