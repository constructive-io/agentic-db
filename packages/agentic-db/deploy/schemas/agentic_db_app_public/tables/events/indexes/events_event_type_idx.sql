-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_event_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/event_type/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX events_event_type_idx ON agentic_db_app_public.events USING BTREE ( event_type );

