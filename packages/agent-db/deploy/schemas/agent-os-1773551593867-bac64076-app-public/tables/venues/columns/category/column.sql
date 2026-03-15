-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/city/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ADD COLUMN category text;

