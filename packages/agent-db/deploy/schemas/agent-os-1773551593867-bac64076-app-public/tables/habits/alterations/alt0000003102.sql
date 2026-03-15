-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/alterations/alt0000003102
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  DISABLE ROW LEVEL SECURITY;

