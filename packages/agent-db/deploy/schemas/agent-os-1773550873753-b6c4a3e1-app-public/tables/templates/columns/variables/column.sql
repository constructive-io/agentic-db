-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/variables/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/templates/columns/content/alterations/alt0000001560


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".templates 
  ADD COLUMN variables jsonb;

