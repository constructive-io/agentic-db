-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/created_at/alterations/alt0000001487
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/created_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".reminders 
  ALTER COLUMN created_at SET NOT NULL;

