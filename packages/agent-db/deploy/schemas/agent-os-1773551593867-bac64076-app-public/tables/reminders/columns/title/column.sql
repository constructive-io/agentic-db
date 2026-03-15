-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/updated_at/alterations/alt0000003099


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".reminders 
  ADD COLUMN title text;

