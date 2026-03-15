-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/id/alterations/alt0000000908
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ALTER COLUMN id SET NOT NULL;

