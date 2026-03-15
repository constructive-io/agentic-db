-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/best_streak/alterations/alt0000003064
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/best_streak/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/current_streak/alterations/alt0000003063



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
    ALTER COLUMN best_streak SET DEFAULT 0;

