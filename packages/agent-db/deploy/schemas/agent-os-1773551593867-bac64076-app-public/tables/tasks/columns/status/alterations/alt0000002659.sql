-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/status/alterations/alt0000002659
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/description/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
    ALTER COLUMN status SET DEFAULT 'todo';

