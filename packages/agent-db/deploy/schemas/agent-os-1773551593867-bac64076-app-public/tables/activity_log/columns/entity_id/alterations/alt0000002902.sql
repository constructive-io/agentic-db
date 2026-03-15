-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/entity_id/alterations/alt0000002902
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/entity_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN entity_id SET NOT NULL;

