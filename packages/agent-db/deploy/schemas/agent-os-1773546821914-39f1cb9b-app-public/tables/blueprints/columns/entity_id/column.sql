-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".blueprints 
  ADD COLUMN entity_id uuid;

