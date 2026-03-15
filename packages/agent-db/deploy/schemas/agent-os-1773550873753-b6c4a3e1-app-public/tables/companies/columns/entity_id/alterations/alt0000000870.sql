-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/entity_id/alterations/alt0000000870
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".companies 
  ALTER COLUMN entity_id SET NOT NULL;

