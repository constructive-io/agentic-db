-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/target_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/columns/action/alterations/alt0000002860


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ADD COLUMN target_type text;

