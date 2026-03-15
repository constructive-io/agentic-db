-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/alterations/alt0000003051
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/secret/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
    ALTER COLUMN is_active SET DEFAULT true;

