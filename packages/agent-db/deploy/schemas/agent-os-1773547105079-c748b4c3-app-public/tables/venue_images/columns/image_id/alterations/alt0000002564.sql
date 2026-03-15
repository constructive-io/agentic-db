-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/columns/image_id/alterations/alt0000002564
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/columns/image_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_images 
  ALTER COLUMN image_id SET NOT NULL;

