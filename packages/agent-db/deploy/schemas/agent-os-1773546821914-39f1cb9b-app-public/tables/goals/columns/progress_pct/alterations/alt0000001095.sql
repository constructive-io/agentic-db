-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/progress_pct/alterations/alt0000001095
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/category/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/progress_pct/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
    ALTER COLUMN progress_pct SET DEFAULT 0;

