-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_type/alterations/alt0000002907
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_type/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/updated_at/alterations/alt0000002906


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN actor_type SET NOT NULL;

