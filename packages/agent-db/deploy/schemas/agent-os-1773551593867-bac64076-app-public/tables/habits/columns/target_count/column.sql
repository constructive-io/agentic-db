-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/target_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/frequency/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  ADD COLUMN target_count int;

