-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/constraints/billing_subscriptions_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/category/column


ALTER TABLE agent_db_app_public.billing_subscriptions 
  ADD CONSTRAINT billing_subscriptions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

