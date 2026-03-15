-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/updated_at/alterations/alt0000003150


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notifications 
  ADD COLUMN title text;

