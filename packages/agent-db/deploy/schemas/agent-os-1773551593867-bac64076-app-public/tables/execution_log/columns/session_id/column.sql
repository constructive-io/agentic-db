-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/columns/updated_at/alterations/alt0000002764


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".execution_log 
  ADD COLUMN session_id uuid;

