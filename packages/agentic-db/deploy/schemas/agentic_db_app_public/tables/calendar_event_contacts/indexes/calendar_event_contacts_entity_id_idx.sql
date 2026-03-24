-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_contacts/indexes/calendar_event_contacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_projects/policies/auth_del_entity_membership/policy


CREATE INDEX calendar_event_contacts_entity_id_idx ON "agentic_db_app_public".calendar_event_contacts USING BTREE ( entity_id );

