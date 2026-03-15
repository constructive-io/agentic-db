-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_steps/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_steps 
  ADD COLUMN created_at timestamptz;

