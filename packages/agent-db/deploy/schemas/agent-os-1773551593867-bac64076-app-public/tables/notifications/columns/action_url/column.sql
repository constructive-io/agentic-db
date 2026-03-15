-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/action_url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/read_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ADD COLUMN action_url text;

