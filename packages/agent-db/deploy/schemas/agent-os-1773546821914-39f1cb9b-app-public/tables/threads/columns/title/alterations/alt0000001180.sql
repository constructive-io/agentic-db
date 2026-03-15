-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/title/alterations/alt0000001180
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/title/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/updated_at/alterations/alt0000001179


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ALTER COLUMN title SET NOT NULL;

