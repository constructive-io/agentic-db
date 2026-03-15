-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/value/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/key/alterations/alt0000003060


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  ADD COLUMN value jsonb;

