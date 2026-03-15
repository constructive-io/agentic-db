-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/best_streak/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/current_streak/alterations/alt0000003111


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  ADD COLUMN best_streak int;

