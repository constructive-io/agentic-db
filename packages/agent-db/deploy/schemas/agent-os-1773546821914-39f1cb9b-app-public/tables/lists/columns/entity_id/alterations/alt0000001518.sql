-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/entity_id/alterations/alt0000001518
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/tags/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  ALTER COLUMN entity_id SET NOT NULL;

