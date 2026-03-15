-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/title/alterations/alt0000002658
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/title/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/updated_at/alterations/alt0000002657


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ALTER COLUMN title SET NOT NULL;

