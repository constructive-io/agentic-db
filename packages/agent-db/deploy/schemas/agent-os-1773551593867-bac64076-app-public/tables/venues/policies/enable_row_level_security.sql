-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
  ENABLE ROW LEVEL SECURITY;

