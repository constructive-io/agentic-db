-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/domain/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/name/alterations/alt0000002484


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ADD COLUMN domain text;

