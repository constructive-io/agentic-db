-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/domain/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/name/alterations/alt0000000875


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ADD COLUMN domain text;

