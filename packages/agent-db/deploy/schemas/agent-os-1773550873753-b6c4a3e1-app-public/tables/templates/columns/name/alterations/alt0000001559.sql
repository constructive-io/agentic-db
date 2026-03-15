-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/name/alterations/alt0000001559
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/updated_at/alterations/alt0000001558


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ALTER COLUMN name SET NOT NULL;

