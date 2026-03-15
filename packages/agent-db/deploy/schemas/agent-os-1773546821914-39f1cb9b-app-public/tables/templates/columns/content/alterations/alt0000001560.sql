-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/content/alterations/alt0000001560
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/type/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/templates/columns/content/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".templates 
  ALTER COLUMN content SET NOT NULL;

