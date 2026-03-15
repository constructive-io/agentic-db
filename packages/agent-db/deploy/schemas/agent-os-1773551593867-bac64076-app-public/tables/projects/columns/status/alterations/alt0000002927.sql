-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/status/alterations/alt0000002927
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/description/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
    ALTER COLUMN status SET DEFAULT 'active';

