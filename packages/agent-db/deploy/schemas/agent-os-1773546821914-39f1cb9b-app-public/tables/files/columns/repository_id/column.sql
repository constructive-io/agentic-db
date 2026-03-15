-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/repository_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/updated_at/alterations/alt0000001351


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ADD COLUMN repository_id uuid;

