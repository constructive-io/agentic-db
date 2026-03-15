-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/best_streak/alterations/alt0000003064


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ADD COLUMN category text;

