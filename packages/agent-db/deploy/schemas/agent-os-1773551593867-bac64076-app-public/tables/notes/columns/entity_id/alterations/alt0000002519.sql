-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/entity_id/alterations/alt0000002519
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ALTER COLUMN entity_id SET NOT NULL;

