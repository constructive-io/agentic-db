-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/constraints/venues_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/main_image_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
  ADD CONSTRAINT venues_pkey PRIMARY KEY (id);

