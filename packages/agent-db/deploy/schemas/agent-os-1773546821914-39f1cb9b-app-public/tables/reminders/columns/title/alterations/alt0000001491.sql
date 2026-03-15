-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/title/alterations/alt0000001491
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/title/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/updated_at/alterations/alt0000001490


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ALTER COLUMN title SET NOT NULL;

