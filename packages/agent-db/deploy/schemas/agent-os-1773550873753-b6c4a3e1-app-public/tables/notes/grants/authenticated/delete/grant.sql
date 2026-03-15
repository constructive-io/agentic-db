-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/main_image_id/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".notes TO authenticated;

