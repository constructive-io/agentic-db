-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/main_image_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ENABLE ROW LEVEL SECURITY;

