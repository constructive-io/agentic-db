-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/entity_id/alterations/alt0000000870
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".companies 
  ALTER COLUMN entity_id SET NOT NULL;

