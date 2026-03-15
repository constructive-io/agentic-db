-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/id/alterations/alt0000003103
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  ALTER COLUMN id SET NOT NULL;

