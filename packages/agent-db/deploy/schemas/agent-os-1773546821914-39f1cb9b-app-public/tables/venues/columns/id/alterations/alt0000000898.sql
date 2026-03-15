-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/id/alterations/alt0000000898
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/main_image_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

