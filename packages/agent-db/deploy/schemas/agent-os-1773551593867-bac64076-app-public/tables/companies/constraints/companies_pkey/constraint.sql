-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/constraints/companies_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".companies 
  ADD CONSTRAINT companies_pkey PRIMARY KEY (id);

