-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/updated_at/alterations/alt0000000874


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ADD COLUMN name text;

