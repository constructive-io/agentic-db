-- Deploy: schemas/agent_db_app_public/tables/user_settings/constraints/user_settings_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000001442


ALTER TABLE agent_db_app_public.user_settings 
  ADD CONSTRAINT user_settings_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

