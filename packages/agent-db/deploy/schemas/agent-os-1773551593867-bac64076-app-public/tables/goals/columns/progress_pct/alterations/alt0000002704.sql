-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/progress_pct/alterations/alt0000002704
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/category/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/progress_pct/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
    ALTER COLUMN progress_pct SET DEFAULT 0;

