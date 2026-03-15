-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/search_tsv/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ADD COLUMN search_tsv tsvector;

