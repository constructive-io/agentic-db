-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/alterations/alt0000000907
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  DISABLE ROW LEVEL SECURITY;

