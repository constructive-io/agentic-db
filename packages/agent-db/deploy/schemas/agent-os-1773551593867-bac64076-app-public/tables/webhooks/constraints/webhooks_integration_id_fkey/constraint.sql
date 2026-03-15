-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/constraints/calendar_events_calendar_account_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
  ADD CONSTRAINT webhooks_integration_id_fkey 
    FOREIGN KEY(integration_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".integrations (id) 
    ON DELETE CASCADE;

