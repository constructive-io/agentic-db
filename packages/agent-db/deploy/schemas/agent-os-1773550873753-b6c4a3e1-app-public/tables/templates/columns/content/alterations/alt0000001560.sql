-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/content/alterations/alt0000001560
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/type/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/content/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ALTER COLUMN content SET NOT NULL;

