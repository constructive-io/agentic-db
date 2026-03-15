-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/entity_id/alterations/alt0000000910
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN entity_id SET NOT NULL;

