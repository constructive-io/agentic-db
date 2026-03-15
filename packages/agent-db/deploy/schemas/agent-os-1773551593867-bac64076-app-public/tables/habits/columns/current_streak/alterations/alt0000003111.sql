-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/current_streak/alterations/alt0000003111
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/target_count/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/current_streak/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
    ALTER COLUMN current_streak SET DEFAULT 0;

