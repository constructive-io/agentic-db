-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/columns/contact_id/alterations/alt0000002593
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/columns/contact_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_images 
  ALTER COLUMN contact_id SET NOT NULL;

