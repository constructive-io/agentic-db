-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/constraints/user_settings_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ADD CONSTRAINT user_settings_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

