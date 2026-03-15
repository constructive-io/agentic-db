-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/content/alterations/alt0000000915
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/content/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/updated_at/alterations/alt0000000914


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ALTER COLUMN content SET NOT NULL;

