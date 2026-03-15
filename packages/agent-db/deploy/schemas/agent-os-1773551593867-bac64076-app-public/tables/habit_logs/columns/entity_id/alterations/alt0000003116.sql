-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/entity_id/alterations/alt0000003116
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/tags/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ALTER COLUMN entity_id SET NOT NULL;

