-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/content/alterations/alt0000000915
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/content/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/updated_at/alterations/alt0000000914


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN content SET NOT NULL;

