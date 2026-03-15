-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/secret/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/is_active/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
    ALTER COLUMN is_active SET DEFAULT true;

