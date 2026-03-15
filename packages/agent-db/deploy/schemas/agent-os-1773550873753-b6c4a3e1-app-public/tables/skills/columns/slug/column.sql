-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/slug/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skills/columns/name/alterations/alt0000001081


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skills 
  ADD COLUMN slug text;

