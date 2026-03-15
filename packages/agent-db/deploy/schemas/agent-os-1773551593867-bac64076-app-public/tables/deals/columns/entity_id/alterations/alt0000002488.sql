-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/entity_id/alterations/alt0000002488
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ALTER COLUMN entity_id SET NOT NULL;

