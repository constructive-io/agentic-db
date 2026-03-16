-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/updated_at/alterations/alt0000002204
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".calendar_accounts 
    ALTER COLUMN updated_at SET DEFAULT now();

