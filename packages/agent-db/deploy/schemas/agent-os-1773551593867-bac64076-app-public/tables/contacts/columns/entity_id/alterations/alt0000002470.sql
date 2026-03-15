-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/entity_id/alterations/alt0000002470
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/embedding/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ALTER COLUMN entity_id SET NOT NULL;

