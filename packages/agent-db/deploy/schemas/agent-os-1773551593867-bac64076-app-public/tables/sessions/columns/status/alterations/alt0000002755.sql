-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/status/alterations/alt0000002755
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/ended_at/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
    ALTER COLUMN status SET DEFAULT 'active';

