-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/entity_id/alterations/alt0000003146
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/columns/ref_type/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ALTER COLUMN entity_id SET NOT NULL;

