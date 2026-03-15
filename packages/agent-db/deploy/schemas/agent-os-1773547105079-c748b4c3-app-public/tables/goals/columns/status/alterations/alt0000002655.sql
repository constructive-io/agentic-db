-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/status/alterations/alt0000002655
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/status/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/target_date/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
    ALTER COLUMN status SET DEFAULT 'active';

