-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/description/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ADD COLUMN tags citext[];

