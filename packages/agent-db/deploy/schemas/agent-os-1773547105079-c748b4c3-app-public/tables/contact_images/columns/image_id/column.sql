-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_images/columns/image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_images 
  ADD COLUMN image_id uuid;

