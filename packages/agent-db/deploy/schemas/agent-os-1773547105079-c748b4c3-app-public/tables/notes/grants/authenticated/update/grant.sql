-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/main_image_id/column


GRANT UPDATE ON "agent-os-1773547105079-c748b4c3-app-public".notes TO authenticated;

