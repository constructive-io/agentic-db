-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/entity_id/alterations/alt0000002550
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/attachments/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/columns/usage_count/alterations/alt0000002546


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".attachments 
  ALTER COLUMN entity_id SET NOT NULL;

