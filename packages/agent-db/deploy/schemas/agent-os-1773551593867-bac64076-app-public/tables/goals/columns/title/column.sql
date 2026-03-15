-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/columns/updated_at/alterations/alt0000002701


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ADD COLUMN title text;

