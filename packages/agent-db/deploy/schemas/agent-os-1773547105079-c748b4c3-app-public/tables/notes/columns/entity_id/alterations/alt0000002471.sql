-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/entity_id/alterations/alt0000002471
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  ALTER COLUMN entity_id SET NOT NULL;

