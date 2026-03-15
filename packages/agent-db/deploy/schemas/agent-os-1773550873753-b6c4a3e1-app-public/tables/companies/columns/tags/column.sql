-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/description/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  ADD COLUMN tags citext[];

