-- Deploy: schemas/agent_db_app_public/tables/calendar_sync/columns/updated_at/alterations/alt0000001169
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_sync/table
-- requires: schemas/agent_db_app_public/tables/calendar_sync/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_sync/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.calendar_sync 
    ALTER COLUMN updated_at SET DEFAULT now();

