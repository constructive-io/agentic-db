-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/progress_pct/alterations/alt0000002704


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ADD COLUMN tags citext[];

