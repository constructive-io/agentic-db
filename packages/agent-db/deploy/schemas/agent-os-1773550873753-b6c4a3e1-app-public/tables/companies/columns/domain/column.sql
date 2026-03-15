-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/domain/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/name/alterations/alt0000000875


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  ADD COLUMN domain text;

