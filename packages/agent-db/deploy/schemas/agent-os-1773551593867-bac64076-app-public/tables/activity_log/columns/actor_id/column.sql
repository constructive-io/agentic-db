-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_type/alterations/alt0000002907


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ADD COLUMN actor_id uuid;

