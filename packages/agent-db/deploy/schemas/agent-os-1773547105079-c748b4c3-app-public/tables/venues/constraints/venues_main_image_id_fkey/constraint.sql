-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
  ADD CONSTRAINT venues_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".images (id) 
    ON DELETE SET NULL;

