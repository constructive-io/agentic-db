-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/best_streak/alterations/alt0000003112
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/best_streak/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/current_streak/alterations/alt0000003111



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
    ALTER COLUMN best_streak SET DEFAULT 0;

