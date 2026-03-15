-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/companies/columns/main_image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  ADD COLUMN entity_id uuid;

