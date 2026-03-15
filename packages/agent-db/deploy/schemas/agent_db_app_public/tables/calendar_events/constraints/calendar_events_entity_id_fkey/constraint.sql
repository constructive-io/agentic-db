-- Deploy: schemas/agent_db_app_public/tables/calendar_events/constraints/calendar_events_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE agent_db_app_public.calendar_events 
  ADD CONSTRAINT calendar_events_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

