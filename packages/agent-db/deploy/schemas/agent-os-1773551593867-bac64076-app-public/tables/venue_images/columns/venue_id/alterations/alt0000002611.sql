-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/columns/venue_id/alterations/alt0000002611
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venue_images/columns/venue_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venue_images 
  ALTER COLUMN venue_id SET NOT NULL;

