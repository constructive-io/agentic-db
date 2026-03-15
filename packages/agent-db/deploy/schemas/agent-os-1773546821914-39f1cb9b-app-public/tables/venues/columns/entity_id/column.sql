-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
  ADD COLUMN entity_id uuid;

