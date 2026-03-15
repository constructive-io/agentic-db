-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/best_streak/alterations/alt0000001503
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/best_streak/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/current_streak/alterations/alt0000001502



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
    ALTER COLUMN best_streak SET DEFAULT 0;

