-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/compression_count/alterations/alt0000001147
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/archived_messages/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/sessions/columns/compression_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".sessions 
    ALTER COLUMN compression_count SET DEFAULT 0;

