-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/to_id/alterations/alt0000001278
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/to_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/to_type/alterations/alt0000001277


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ALTER COLUMN to_id SET NOT NULL;

