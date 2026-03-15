-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/id/alterations/alt0000003093
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ALTER COLUMN id SET NOT NULL;

