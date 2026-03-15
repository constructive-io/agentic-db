-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/best_streak/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/current_streak/alterations/alt0000001502


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ADD COLUMN best_streak int;

