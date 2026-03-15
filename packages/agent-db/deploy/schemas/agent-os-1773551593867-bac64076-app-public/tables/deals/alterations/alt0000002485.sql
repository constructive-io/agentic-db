-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/alterations/alt0000002485
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  DISABLE ROW LEVEL SECURITY;

