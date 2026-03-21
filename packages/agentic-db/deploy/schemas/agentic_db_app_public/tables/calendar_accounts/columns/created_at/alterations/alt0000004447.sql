-- Deploy: schemas/agentic_db_app_public/tables/calendar_accounts/columns/created_at/alterations/alt0000004447
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.calendar_accounts 
  ALTER COLUMN created_at SET NOT NULL;

