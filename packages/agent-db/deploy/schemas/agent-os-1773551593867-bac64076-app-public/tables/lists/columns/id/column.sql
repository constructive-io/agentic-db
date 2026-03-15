-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/lists/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".lists 
  ADD COLUMN id uuid;

