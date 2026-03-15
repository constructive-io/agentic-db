-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/columns/image_id/alterations/alt0000000997
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/columns/image_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_images 
  ALTER COLUMN image_id SET NOT NULL;

