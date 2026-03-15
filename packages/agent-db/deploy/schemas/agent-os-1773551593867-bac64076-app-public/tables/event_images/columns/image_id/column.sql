-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/columns/image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_images 
  ADD COLUMN image_id uuid;

