-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/from_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/from_type/alterations/alt0000001275


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ADD COLUMN from_id uuid;

