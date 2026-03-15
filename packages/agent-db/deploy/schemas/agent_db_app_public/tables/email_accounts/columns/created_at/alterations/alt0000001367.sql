-- Deploy: schemas/agent_db_app_public/tables/email_accounts/columns/created_at/alterations/alt0000001367
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/email_accounts/table
-- requires: schemas/agent_db_app_public/tables/email_accounts/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/email_accounts/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.email_accounts 
    ALTER COLUMN created_at SET DEFAULT now();

