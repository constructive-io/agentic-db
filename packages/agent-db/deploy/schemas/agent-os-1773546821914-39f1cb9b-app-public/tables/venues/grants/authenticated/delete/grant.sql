-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/main_image_id/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".venues TO authenticated;

