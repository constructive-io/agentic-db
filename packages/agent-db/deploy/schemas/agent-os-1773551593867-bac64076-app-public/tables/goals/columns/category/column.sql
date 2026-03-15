-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/status/alterations/alt0000002703


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ADD COLUMN category text;

