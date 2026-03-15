-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/constraints/user_settings_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/alterations/alt0000003051


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  ADD CONSTRAINT user_settings_pkey PRIMARY KEY (id);

