-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/id/alterations/alt0000000877
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ALTER COLUMN id SET NOT NULL;

