-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/verified/alterations/alt0000001071
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/verified/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/importance/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
    ALTER COLUMN verified SET DEFAULT false;

