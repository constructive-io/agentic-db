-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/content/alterations/alt0000001481
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/content/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/updated_at/alterations/alt0000001480


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".ideas 
  ALTER COLUMN content SET NOT NULL;

