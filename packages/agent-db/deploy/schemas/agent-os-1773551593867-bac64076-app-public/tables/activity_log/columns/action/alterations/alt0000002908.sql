-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/action/alterations/alt0000002908
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/action/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN action SET NOT NULL;

