-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/constraints/deals_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ADD CONSTRAINT deals_pkey PRIMARY KEY (id);

