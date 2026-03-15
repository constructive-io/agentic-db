-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_images/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".contact_images TO authenticated;

