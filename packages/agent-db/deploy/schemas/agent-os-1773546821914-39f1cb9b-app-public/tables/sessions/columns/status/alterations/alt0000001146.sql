-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/status/alterations/alt0000001146
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/status/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/ended_at/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
    ALTER COLUMN status SET DEFAULT 'active';

