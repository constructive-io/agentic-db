-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/entity_id/alterations/alt0000001413
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/tags/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
  ALTER COLUMN entity_id SET NOT NULL;

