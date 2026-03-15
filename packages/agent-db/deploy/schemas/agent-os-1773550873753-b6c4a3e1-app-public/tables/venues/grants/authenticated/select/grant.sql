-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/main_image_id/column


GRANT SELECT ON "agent-os-1773550873753-b6c4a3e1-app-public".venues TO authenticated;

