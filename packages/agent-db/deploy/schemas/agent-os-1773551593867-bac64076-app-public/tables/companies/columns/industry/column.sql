-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/industry/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/domain/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ADD COLUMN industry text;

