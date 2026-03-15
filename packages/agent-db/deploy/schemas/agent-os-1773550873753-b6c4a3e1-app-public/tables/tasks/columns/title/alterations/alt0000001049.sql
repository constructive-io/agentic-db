-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/title/alterations/alt0000001049
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/title/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/updated_at/alterations/alt0000001048


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ALTER COLUMN title SET NOT NULL;

