-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/ended_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/started_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  ADD COLUMN ended_at timestamptz;

