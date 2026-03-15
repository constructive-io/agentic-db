-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/entity_id/alterations/alt0000001185
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/embedding/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".blueprints 
  ALTER COLUMN entity_id SET NOT NULL;

