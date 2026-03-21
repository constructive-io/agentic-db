-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/constraints/calendar_events_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  ADD CONSTRAINT calendar_events_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

