-- Deploy: schemas/agent_db_users_public/tables/users/columns/user_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE agent_db_users_public.users 
  ADD COLUMN user_id uuid;

